import json,sys,re
from diag import devs
from sim import *
CT='''.control
save all
op
show m : vds : vdsat : id > DIR/devs.txt
.endc'''
SAT=['xm2','xm6','xm9','xm19','xm20','xm26','xm27','xm5','xm16','xm21','xm25','xm14','xm33','xm35','xm36','xmrp0','xmrn0','xmrn2','xmrp2','xm3','xm11']
def one(a):
    top,fd,c=a
    d=run(re.sub(r'\.control.*?\.endc',CT,corner(top,c),flags=re.S)+fd+AUX); D=devs(d+'/devs.txt'); rm(d)
    return c['CASE'],{k:abs(D[k]['vds'])-abs(D[k]['vdsat']) for k in SAT if k in D}
def margins(P,topo={'nobuf','replica'}):
    top,fd=gen.build(P,topo); R=pmap(one,[(top,fd,c) for c in CASES])
    w={k:min((r[1][k],r[0]) for r in R) for k in R[0][1]}
    for k,(v,c) in sorted(w.items(),key=lambda x:x[1][0])[:8]: print(f'  {k:6} min Vds-Vdsat {v*1e3:7.1f} mV ({c})')
if __name__=='__main__':
    for f in sys.argv[1:]: print(f); margins(json.load(open(f)))
