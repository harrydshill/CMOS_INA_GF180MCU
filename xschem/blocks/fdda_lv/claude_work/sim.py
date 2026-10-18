import re,subprocess,tempfile,csv,numpy as np,os
from concurrent.futures import ThreadPoolExecutor
import gen
UP='/mnt/user-data/uploads/CMOS_INA_GF180MCU/xschem/blocks/fdda_lv/simulation/'
CASES=list(csv.DictReader(open('/mnt/user-data/uploads/CMOS_INA_GF180MCU/xschem/pvt_cases.csv')))
CMTOP=open(UP+'tb_fdda_lv_cmfb_stab.spice').read(); CMTOP=CMTOP[:CMTOP.index('.subckt fdda_lv')]
AUX=gen.RAW[gen.RAW.index('.subckt aux_amp'):]  # keep definition available
def corner(tb,c):
    tb=re.sub(r'(?im)^(\s*\.lib\s+\S*sm141064\.ngspice\s+)typical\s*$', r'\g<1>'+c['MOS'], tb)
    tb=re.sub(r'(?im)^(\s*\.lib\s+\S*sm141064\.ngspice\s+)res_\w+\s*$', r'\g<1>'+c['RES'], tb)
    tb=re.sub(r'(?im)^(\s*\.lib\s+\S*sm141064\.ngspice\s+)bjt_\w+\s*$', r'\g<1>'+c['BJT'], tb)
    tb=re.sub(r'(?im)^(\s*\.param\s+vdd\s*=\s*)\S+', r'\g<1>'+c['VDD'], tb)
    tb=re.sub(r'(?im)^\s*\.temp.*$', '.temp '+c['TEMP'], tb)
    return tb
def run(txt):
    d=tempfile.mkdtemp(dir='/home/claude/w2/tmp'); txt=txt.replace('DIR/',d+'/')
    open(d+'/n.sp','w').write(txt); subprocess.run(['ngspice','-b',d+'/n.sp'],stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL,cwd=d); return d
def rm(d): subprocess.run(['rm','-rf',d])
def C(name): return [c for c in CASES if c['CASE']==name][0]
def pmap(f,xs,n=4):
    with ThreadPoolExecutor(n) as ex: return list(ex.map(f,xs))
# ---------- AOL ----------
AC='''.control
set units=degrees
save all
op
print vdd#branch v.x2.vmeas#branch > DIR/op.txt
ac dec 40 1 1G
let aol=(v(Vop)-v(Von))/(v(INP)-v(INM))
wrdata DIR/ac.txt aol
.endc'''
def aol1(args):
    top,fd,c=args
    d=run(re.sub(r'\.control.*?\.endc',AC,corner(top,c),flags=re.S)+fd+AUX)
    try:
        o=[float(x) for x in re.findall(r'=\s*(\S+)',open(d+'/op.txt').read())]
        a=np.loadtxt(d+'/ac.txt')
    except Exception: rm(d); return dict(case=c['CASE'],err=1)
    rm(d)
    f=a[:,0]; H=a[:,1]+1j*a[:,2]; g=20*np.log10(abs(H)); ph=np.degrees(np.unwrap(np.angle(H)))
    r=dict(case=c['CASE'],idd=-o[0]*1e6,iq=o[1]*1e6,aol=np.interp(10,f,g))
    k=np.where((g[:-1]>0)&(g[1:]<=0))[0]
    if len(k):
        k=k[0]; fr=-g[k]/(g[k+1]-g[k]); r['ugf']=10**(np.log10(f[k])+fr*np.log10(f[k+1]/f[k]))/1e6; r['pm']=180+ph[k]+fr*(ph[k+1]-ph[k])
    else: r['ugf']=np.nan; r['pm']=np.nan
    j=np.where((ph[:-1]>-180)&(ph[1:]<=-180))[0]; r['gm']=-g[j[0]] if len(j) else 99
    return r
def aol(P,topo,cases=None):
    top,fd=gen.build(P,topo)
    cs=CASES if cases is None else [C(x) for x in cases]
    return pmap(aol1,[(top,fd,c) for c in cs])
# ---------- CM loop (injection at M25 gate, AOL bench) ----------
CMC='''.control
save all
ac dec 40 1e-2 1G
let T = -v(x2.vcmfbref)/v(x2.cmg)
wrdata DIR/cm.txt T
.endc'''
def cm1(args):
    top,fd,c=args
    fd2=re.sub(r'(\nXM25 Vcmfb )Vcmfbref ',r'\1cmg ',fd).replace('\nXM25 Vcmfb cmg','\nVinjcm cmg Vcmfbref DC 0 AC 1\nXM25 Vcmfb cmg',1)
    d=run(re.sub(r'\.control.*?\.endc',CMC,corner(top,c),flags=re.S)+fd2+AUX)
    try: a=np.loadtxt(d+'/cm.txt')
    except Exception: rm(d); return dict(case=c['CASE'],err=1)
    rm(d)
    f=a[:,0]; H=a[:,1]+1j*a[:,2]; g=20*np.log10(abs(H)); ph=np.degrees(np.unwrap(np.angle(H)))
    k=np.where((g[:-1]>0)&(g[1:]<=0))[0]; r=dict(case=c['CASE'])
    if len(k): r['cmpm']=180+ph[k[0]]; r['cmugf']=f[k[0]]/1e6
    j=np.where((ph[:-1]>-180)&(ph[1:]<=-180))[0]; r['cmgm']=-g[j[0]] if len(j) else 99
    return r
def cmloop(P,topo,cases=None):
    top,fd=gen.build(P,topo); cs=CASES if cases is None else [C(x) for x in cases]
    return pmap(cm1,[(top,fd,c) for c in cs])
# ---------- slew: unity diff feedback, 100p loads, 2V diff step ----------
SLC='''.control
save all
tran 5n 40u
wrdata DIR/t.txt v(vop) v(von)
.endc'''
def sl1(args):
    top,fd,c=args
    t=corner(CMTOP,c)
    t=t.replace('VDM2 INP VCM 0.5','VDM2 INP VCM PULSE(-0.5 0.5 5u 5n 5n 15u 40u)').replace('VDM1 VCM INM 0.5','VDM1 VCM INM PULSE(-0.5 0.5 5u 5n 5n 15u 40u)').replace('I0 IPROBE 0 PULSE(0 1u 1n 1n 1n 1n 100u)','I0 IPROBE 0 0')
    d=run(re.sub(r'\.control.*?\.endc',SLC,t,flags=re.S)+fd+AUX)
    try: a=np.loadtxt(d+'/t.txt')
    except Exception: rm(d); return dict(case=c['CASE'],err=1)
    rm(d)
    tt=a[:,0]; vp=a[:,1]; vn=a[:,3]
    def sr(v,t0,t1):
        sel=(tt>=t0)&(tt<t1); x=v[sel]; ts=tt[sel]; a0=x[0]; a1=x[-1]
        lo=a0+0.2*(a1-a0); hi=a0+0.8*(a1-a0)
        i1=np.argmax((x-lo)*np.sign(a1-a0)>0); i2=np.argmax((x-hi)*np.sign(a1-a0)>0)
        s=abs(hi-lo)/(ts[i2]-ts[i1]+1e-15)/1e6
        os_=(np.max((x-a1)*np.sign(a1-a0)))/abs(a1-a0)*100
        return s,os_
    r=dict(case=c['CASE'])
    r['vop_rise'],r['os1']=sr(vp,5e-6,20e-6); r['von_fall'],_=sr(vn,5e-6,20e-6)
    r['vop_fall'],r['os2']=sr(vp,20e-6,40e-6); r['von_rise'],_=sr(vn,20e-6,40e-6)
    return r
def slew(P,topo,cases):
    top,fd=gen.build(P,topo); return pmap(sl1,[(top,fd,C(x)) for x in cases])
# ---------- summaries ----------
def summ(R,keys):
    out={}
    for k,fn in keys:
        v=[r[k] for r in R if k in r and r[k]==r[k]]
        out[k]=fn(v) if v else np.nan
    return out
SLC_CASES=['typical_t25_v330','ss_t125_v297','ff_tm40_v363','fs_t125_v297','sf_tm40_v363']
def evaluate(P,topo,label='',do_slew=True,quiet=False):
    A=aol(P,topo); CMR=cmloop(P,topo)
    s=summ(A,[('ugf',min),('pm',min),('gm',min),('aol',min),('idd',max),('iq',min)])
    s['iqmax']=max(r['iq'] for r in A); s['aolmax']=max(r['aol'] for r in A); s['ugfmax']=max(r['ugf'] for r in A)
    s.update(summ(CMR,[('cmpm',min),('cmgm',min)]))
    s['fails']=sum(1 for r in A+CMR if 'err' in r)
    if do_slew:
        S=slew(P,topo,SLC_CASES)
        rises=[min(r['vop_rise'],r['von_rise']) for r in S]; falls=[min(r['vop_fall'],r['von_fall']) for r in S]
        s['sr_rise']=min(rises); s['sr_fall']=min(falls)
        s['sr_asym']=max(abs(r['vop_rise']-r['vop_fall'])/max(r['vop_rise'],r['vop_fall']) for r in S)*100
        s['sl_os']=max(max(r['os1'],r['os2']) for r in S)
    if not quiet:
        print(f"{label:34} UGF {s['ugf']:.3f}-{s['ugfmax']:.2f}MHz PM {s['pm']:.1f} GM {s['gm']:.1f} Aol {s['aol']:.1f}-{s['aolmax']:.1f} Idd {s['idd']:.1f} Iq {s['iq']:.1f}-{s['iqmax']:.1f} | CM PM {s['cmpm']:.1f} GM {s['cmgm']:.1f}"
              +(f" | SR+ {s['sr_rise']:.2f} SR- {s['sr_fall']:.2f} V/us asym {s['sr_asym']:.0f}% OS {s['sl_os']:.0f}%" if do_slew else '')+(f" FAILS {s['fails']}" if s['fails'] else ''))
    return s,A
