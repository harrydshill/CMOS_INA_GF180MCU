import re,json,sim,gen,sys,numpy as np
def contrib(P,case='typical_t25_v330',f1=1,f2=1e5):
    top,fd=gen.build(P,{'nobuf','replica'})
    NC=f'''.control
save all
op
noise V(Vop,Von) VDM dec 1 {f1} {f2} 1
setplot noise1
set filetype=ascii
write DIR/n.raw all
.endc'''
    d=sim.run(re.sub(r'\.control.*?\.endc',NC,sim.corner(top,sim.C(case)),flags=re.S)+fd+sim.AUX)
    t=open(d+'/n.raw').read(); sim.rm(d)
    hdr,body=t.split('Values:'); nv=int(re.search(r'No. Variables:\s*(\d+)',hdr).group(1))
    names=[l.split()[1] for l in hdr.split('Variables:\n')[1].strip().split('\n')][:nv]
    arr=np.array([float(x) for x in body.split()]).reshape(-1,nv+1)[:,1:]
    return names,arr
def table(P,case='typical_t25_v330'):
    names,arr=contrib(P,case)
    devi=[k for k,n in enumerate(names) if re.fullmatch(r'onoise\.(m\.x2\.\w+\.m0|r\.x2\.\w+(\.\w+)?|r\w*\.x2\.\w+)',n) or re.fullmatch(r'onoise\.\w+\.x2\.x[rc]\w+\.\w+',n)]
    out=[]
    for r in arr:
        f=r[0]; inn=r[1]
        tot={}
        for k in devi:
            dev=names[k].split('.')[3] if names[k].startswith('onoise.m.') else names[k].split('.')[3] if len(names[k].split('.'))>3 else names[k]
            tot[dev]=tot.get(dev,0)+r[k]**2
        S=sum(tot.values()); g=np.sqrt(S)/inn
        out.append((f,inn,{k:(v/S,np.sqrt(v)/g) for k,v in tot.items()}))
    return out
if __name__=='__main__':
    P=json.load(open(sys.argv[1] if len(sys.argv)>1 else 'P_B.json'))
    for f,inn,t in table(P):
        print(f'f={f:g} Hz: in {inn*1e9:.1f} nV/rtHz')
        for k,(fr,v) in sorted(t.items(),key=lambda x:-x[1][0])[:10]: print(f'   {k:10} {100*fr:5.1f}%  {v*1e9:7.1f} nV/rtHz')
