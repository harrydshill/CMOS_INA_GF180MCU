import json,copy
from c1 import c1
P9=json.load(open('P9.json'))
U=lambda m: dict(W=8,L=2,m=m)
def S10(mp=32,k3=2,ibp=11,m35=2,k4=2,m36=3,k2=2,ibn=14,cw=45,rz=10,unit=(8,2),mn=24,k1=2):
    P=copy.deepcopy(P9); W,L=unit; u=lambda m: dict(W=W,L=L,m=m)
    P.update({'XM14':u(mn),'XM37':u(mn),'XMRN1':u(k1),            # NMOS out + replica
              'XM33':u(mp),'XM34':u(mp),'XMRP1':u(k3),            # PMOS out + replica (same unit as NMOS)
              'XM36':U(m36),'XM32':U(m36),'XMRN2':U(k2),          # floating NMOS + replica, 8/2 (L=2 chain)
              'XM35':U(m35),'XM30':U(m35),'XMRP2':U(k4),          # floating PMOS + replica, 8/2
              'XMRP0':dict(W=2,L=8,m=ibn),'XMRN0':dict(W=2,L=16,m=ibp)})
    P.update(c1(cw,rz)); return P
