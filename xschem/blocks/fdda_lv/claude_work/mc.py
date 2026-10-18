import re,numpy as np,json
from sim import *
def expand(fd):
    out=[]
    for l in gen.lines(fd):
        mm=re.search(r'(?<=\s)m=(\d+)',l)
        if l.startswith('XM') and 'fet_03v3' in l and mm and int(mm.group(1))>1:
            m=int(mm.group(1)); l1=re.sub(r'(?<=\s)m=\d+','m=1',l); nm=l1.split(' ')[0]
            for k in range(m): out.append(nm+'_'+str(k)+l1[len(nm):])
        else: out.append(l)
    return gen.join(out)
def fb(top):  # unity-feedback offset configuration, 1p loads (as tb_fdda_lv_offset)
    top=top.replace('x2 PSUP_LV VCM VCM INM INP Vop Von net2 0 net3 VCM fdda_lv','x2 PSUP_LV Vop Von INM INP Vop Von net2 0 net3 VCM fdda_lv')
    top=top.replace('C1 Von 0 100p','C1 Von 0 1p').replace('C2 Vop 0 100p','C2 Vop 0 1p')
    return top.replace('.param sw_stat_global=0','.param sw_stat_global=1').replace('.param sw_stat_mismatch=0','.param sw_stat_mismatch=1')
CT='''.control
save all
op
print v(vop)-v(von) v.x2.vmeas#branch v.x2.vmeas1#branch vdd#branch > DIR/o.txt
.endc'''
def one(a):
    top,fd,seed=a
    t=fb(top).replace('**** begin user architecture code',f'.option seed={seed}\n**** begin user architecture code')
    d=run(re.sub(r'\.control.*?\.endc',CT,t,flags=re.S)+fd+AUX)
    try: v=[float(x) for x in re.findall(r'=\s*(\S+)',open(d+'/o.txt').read())]
    except Exception: v=None
    rm(d); return v
def mcrun(P,topo,n=300,seed=4000):
    top,fd=gen.build(P,topo); fd=expand(fd)
    R=np.array([r for r in pmap(one,[(top,fd,seed+i) for i in range(n)]) if r])
    os_=R[:,0]*1e3; iq=np.concatenate([R[:,1],R[:,2]])*1e6; idd=-R[:,3]*1e6
    return dict(n=len(R),os_sigma=os_.std(),os_max=abs(os_).max(),iq_mean=iq.mean(),iq_sigma=iq.std(),iq_min=iq.min(),iq_max=iq.max(),idd_max=idd.max())
if __name__=='__main__':
    import sys
    S=json.load(open('steps.json')); res={}
    for tag in sys.argv[1:]:
        st=[x for x in S if x['tag']==tag][0]
        r=mcrun(st['P'],set(st['topo'])); res[tag]=r
        print(tag,{k:round(v,3) for k,v in r.items()})
    json.dump(res,open('mc_'+'_'.join(sys.argv[1:])+'.json','w'))
