import json,re,numpy as np
from sim import *
import sys; P=json.load(open(sys.argv[1] if len(sys.argv)>1 else 'P9.json')); top,fd=gen.build(P,{'nobuf','replica'})
CMK='''.control
save all
tran 2n 30u
let vcm=(v(vop)+v(von))/2
wrdata DIR/t.txt vcm
.endc'''
def cmkick(c):
    d=run(re.sub(r'\.control.*?\.endc',CMK,corner(CMTOP,c),flags=re.S)+fd+AUX)
    a=np.loadtxt(d+'/t.txt'); rm(d); t,v=a[:,0],a[:,1]; fin=np.median(v[t>25e-6]); pk=np.abs(v-fin).max()
    idx=np.where(np.abs(v-fin)>0.05*pk)[0]; return dict(case=c['CASE'],cm_settle=t[idx[-1]]*1e6,cm_late=np.abs(v[t>5e-6]-fin).max()*1e3)
STP='''.control
save all
tran 2n 12u
let vd=v(vop)-v(von)
wrdata DIR/t.txt vd
.endc'''
def step(c):
    t=corner(CMTOP,c).replace('VDM2 INP VCM 0.5','VDM2 INP VCM PULSE(0.5 0.55 2u 10n 10n 1 2)').replace('VDM1 VCM INM 0.5','VDM1 VCM INM PULSE(0.5 0.55 2u 10n 10n 1 2)').replace('I0 IPROBE 0 PULSE(0 1u 1n 1n 1n 1n 100u)','I0 IPROBE 0 0')
    d=run(re.sub(r'\.control.*?\.endc',STP,t,flags=re.S)+fd+AUX); a=np.loadtxt(d+'/t.txt'); rm(d)
    tt,vd=a[:,0],a[:,1]; v0=vd[(tt>1.5e-6)&(tt<2e-6)].mean(); v1=vd[tt>10e-6].mean(); st=v1-v0
    os_=(vd[tt>2e-6].max()-v1)/st*100; idx=np.where(np.abs(vd-v1)>0.01*abs(st))[0]
    return dict(case=c['CASE'],step_os=os_,step_settle=(tt[idx[-1]]-2e-6)*1e6)
if __name__=='__main__':
    A=pmap(cmkick,CASES); B=pmap(step,CASES); S=slew(P,{'nobuf','replica'},[c['CASE'] for c in CASES])
    R={'cm':A,'step':B,'slew':S}; json.dump(R,open('ver_'+(sys.argv[1] if len(sys.argv)>1 else 'P9.json'),'w'),default=float)
    print('CM kick: worst settle(5%%) %.2f us, worst residual after 5us %.4f mV'%(max(r['cm_settle'] for r in A),max(r['cm_late'] for r in A)))
    print('Step 100mV: overshoot %.1f..%.1f %%, 1%% settle max %.2f us'%(min(r['step_os'] for r in B),max(r['step_os'] for r in B),max(r['step_settle'] for r in B)))
    rise=[min(r['vop_rise'],r['von_rise']) for r in S]; fall=[min(r['vop_fall'],r['von_fall']) for r in S]
    asym=[abs(r['vop_rise']-r['vop_fall'])/max(r['vop_rise'],r['vop_fall'])*100 for r in S]
    print('Slew (45 corners): rise %.2f..%.2f, fall %.2f..%.2f V/us, asym max %.1f%% mean %.1f%%, large-step OS max %.1f%%'%(min(rise),max(rise),min(fall),max(fall),max(asym),np.mean(asym),max(max(r['os1'],r['os2']) for r in S)))
