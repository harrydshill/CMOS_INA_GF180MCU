import numpy as np,re,json,copy
from sim import *
CT='''.control
save all
op
show m : gm : gds : id : vds : vdsat : cgg > DIR/devs.txt
ac dec 40 1 1G
let vid=v(inp)-v(inm)
let hofc = (v(x2.vofcp)-v(x2.vofcn))/vid
let hn10 = (v(x2.n10)-v(x2.n9))/vid
let hout = (v(vop)-v(von))/vid
let hsum = (v(x2.sum_n)-v(x2.sum_p))/vid
wrdata DIR/nodes.txt hsum hofc hn10 hout
.endc'''
def devs(path):
    rows={}
    for b in open(path).read().split('BSIM4'):
        ls=[l.split() for l in b.strip().split('\n')[1:] if l.strip()]
        if not ls: continue
        for l in ls[1:]:
            for i,dn in enumerate(ls[0][1:]):
                try: rows.setdefault(dn.replace('m.x2.','').replace('.m0',''),{})[l[0]]=float(l[1+i])
                except: pass
    return rows
def diag(P,topo,case='typical_t25_v330',pr=True):
    top,fd=gen.build(P,topo)
    d=run(re.sub(r'\.control.*?\.endc',CT,corner(top,C(case)),flags=re.S)+fd+AUX)
    D=devs(d+'/devs.txt'); a=np.loadtxt(d+'/nodes.txt'); rm(d); f=a[:,0]
    H={n:a[:,1+3*i]+1j*a[:,2+3*i] for i,n in enumerate(['sum','ofc','n10','out'])}
    g=20*np.log10(abs(H['out'])); k=np.where((g[:-1]>0)&(g[1:]<=0))[0][0]; fu=f[k]
    at=lambda h,fr: h[np.argmin(abs(f-fr))]; ang=lambda x: float(np.degrees(np.angle(x)))
    # out/ofc -> gm2eff
    gm2=abs(at(H['out']/H['ofc'],2e5))*2*np.pi*2e5*100e-12
    r=dict(UGF=fu/1e6,PM=180+float(np.degrees(np.unwrap(np.angle(H['out'])))[k]),gm14=D['xm14']['gm']*1e6,gm33=D['xm33']['gm']*1e6,
           gmid14=D['xm14']['gm']/D['xm14']['id'],gmid33=D['xm33']['gm']/abs(D['xm33']['id']),Iq=D['xm14']['id']*1e6,
           n10ofc=abs(at(H['n10']/H['ofc'],1e3)),gm2eff=gm2*1e6,p2=gm2/(2*np.pi*100e-12)/1e6,
           ph_n10=ang(at(H['n10']/H['ofc'],fu)),ph_outofc=ang(at(H['out']/H['ofc'],fu))+90,ph_ofcsum=ang(at(H['ofc']/H['sum'],fu)),
           cgg33=D['xm33']['cgg']*1e12*1,cgg14=D['xm14']['cgg']*1e12,gm35=D['xm35']['gm']*1e6,gm36=D['xm36']['gm']*1e6)
    if pr: print(case,' '.join(f'{k}={v:.3g}' for k,v in r.items()))
    return r,D
