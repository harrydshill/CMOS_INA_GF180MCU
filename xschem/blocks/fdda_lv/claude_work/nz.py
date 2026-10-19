import re,numpy as np,sim,gen
NC='''.control
save all
noise V(Vop,Von) VDM dec 20 0.01 100Meg
setplot noise1
wrdata DIR/n.txt inoise_spectrum onoise_spectrum
setplot noise2
print inoise_total onoise_total > DIR/tot.txt
.endc'''
def noise1(args):
    top,fd,c=args
    d=sim.run(re.sub(r'\.control.*?\.endc',NC,sim.corner(top,c),flags=re.S)+fd+sim.AUX)
    try: a=np.loadtxt(d+'/n.txt'); tot=open(d+'/tot.txt').read()
    except Exception as e: sim.rm(d); return dict(case=c['CASE'],err=1)
    sim.rm(d)
    f=a[:,0]; vn=a[:,1]  # V/sqrtHz input-referred
    return dict(case=c['CASE'],f=f,vn=vn)
def analyse(f,vn):
    # thermal floor: median of 10k-100k (before BW rolloff effects)
    sel=(f>=2e4)&(f<=2e5); th=np.median(vn[sel])
    # 1/f fit: vn^2 = th^2 (1 + fc/f) ; corner where flicker PSD = thermal PSD
    k=np.where((vn**2>=2*th**2)&(f<1e5))[0]
    fc=f[k[-1]] if len(k) else np.nan
    # more precise: interpolate in log
    if len(k) and k[-1]+1<len(f):
        i=k[-1]; y1=np.log(vn[i]**2/th**2-1); y2=np.log(max(vn[i+1]**2/th**2-1,1e-9))
        fc=np.exp(np.log(f[i])+(0-y1)/(y2-y1)*(np.log(f[i+1])-np.log(f[i])))
    def at(x): return np.exp(np.interp(np.log(x),np.log(f),np.log(vn)))
    def integ(f1,f2):
        s=(f>=f1)&(f<=f2); return np.sqrt(np.trapezoid(vn[s]**2,f[s]))
    return dict(thermal=th,fc=fc,v1=at(1),v10=at(10),v100=at(100),v1k=at(1e3),
                rms_0p5_150=integ(0.5,150),rms_0p1_10=integ(0.1,10),rms_1_100k=integ(1,1e5))
def noise(P,topo,cases):
    top,fd=gen.build(P,topo)
    R=sim.pmap(noise1,[(top,fd,sim.C(x)) for x in cases])
    for r in R:
        if 'f' in r: r.update(analyse(r['f'],r['vn']))
    return R
