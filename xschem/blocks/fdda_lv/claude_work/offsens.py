import re,json,numpy as np,sys
import gen
from sim import run,rm,AUX,pmap
from mc import fb
AVT={'nfet':4.6,'pfet':5.2}
CT='''.control
save all
op
print v(vop)-v(von) > DIR/o.txt
.endc'''
def os_with(top,fd,dev,dv):
    if dev:
        ls=gen.lines(fd)
        for i,l in enumerate(ls):
            p=l.split(' ')
            if p[0]==dev:
                g=p[2]; p[2]=g+'_inj'; ls[i]=' '.join(p); ls.insert(i,f'Vinj_{dev} {g}_inj {g} {dv}'); break
        fd=gen.join(ls)
    t=fb(top).replace('.param sw_stat_global=1','.param sw_stat_global=0').replace('.param sw_stat_mismatch=1','.param sw_stat_mismatch=0')
    d=run(re.sub(r'\.control.*?\.endc',CT,t,flags=re.S)+fd+AUX)
    v=float(re.findall(r'=\s*(\S+)',open(d+'/o.txt').read())[0]); rm(d); return v
def analyse(P,topo=('nobuf','replica')):
    top,fd=gen.build(P,set(topo))
    devs=[]
    for l in gen.lines(fd):
        if l.startswith('XM') and 'fet_03v3' in l:
            p=l.split(' '); W=float(re.search(r' W=([\d.]+)u',l).group(1)); L=float(re.search(r' L=([\d.]+)u',l).group(1)); m=int(re.search(r' m=(\d+)',l).group(1))
            devs.append((p[0],p[5][:4],W,L,m))
    base=os_with(top,fd,None,0)
    S=pmap(lambda d: (os_with(top,fd,d[0],1e-3)-base)/1e-3, devs)
    rows=[]
    for (n,t,W,L,m),s in zip(devs,S):
        sig=AVT[t]/np.sqrt(W*L*m); rows.append((n,s,sig,abs(s)*sig))
    tot=np.sqrt(sum(r[3]**2 for r in rows))
    for n,s,sig,c in sorted(rows,key=lambda r:-r[3])[:14]:
        print(f'{n:7} sens {s:8.3f}  sigVt {sig:5.2f} mV  contrib {c:6.3f} mV  ({100*c**2/tot**2:4.1f}% of var)')
    print('predicted output offset sigma %.3f mV'%tot)
if __name__=='__main__': analyse(json.load(open(sys.argv[1])))
