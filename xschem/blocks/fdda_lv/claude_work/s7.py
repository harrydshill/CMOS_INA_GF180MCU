import json,copy
from c1 import c1
P5=json.load(open('P5.json'))
def S7(variant='A',cw=43,rz=10,inm=16):
    P=copy.deepcopy(P5)
    P.update({
     'XM14':dict(W=8,L=2,m=24),'XM37':dict(W=8,L=2,m=24),'XMRN1':dict(W=8,L=2,m=2),   # Iq = 12*Ibn
     'XM36':dict(W=4,L=4,m=6),'XM32':dict(W=4,L=4,m=6),'XMRN2':dict(W=4,L=4,m=4),     # I36 = 1.5*Ibn
     'XMRP0':dict(W=2,L=8,m=15),                                                        # Ibn = 3.75uA
     'XM35':dict(W=4,L=4,m=4),'XM30':dict(W=4,L=4,m=4),
     'XM12':dict(W=8,L=2,m=2),'XM15':dict(W=8,L=2,m=2),'XM4':dict(W=4,L=4,m=8),
     'XM21':dict(W=2,L=8,m=2),'XM25':dict(W=2,L=8,m=2)})
    if variant=='A':   # PMOS out W16/L1 x12, replica x2 -> Iq = 6*Ibp, Ibp=7.25
        P.update({'XM33':dict(W=16,L=1,m=12),'XM34':dict(W=16,L=1,m=12),'XMRP1':dict(W=16,L=1,m=2),
                  'XMRN0':dict(W=2,L=8,m=29),'XMRP2':dict(W=4,L=4,m=12)})   # I35 = 4*7.25/12 = 2.4
    else:              # PMOS out W16/L1 x24, replica x2 -> Iq = 12*Ibp, Ibp=3.75
        P.update({'XM33':dict(W=16,L=1,m=24),'XM34':dict(W=16,L=1,m=24),'XMRP1':dict(W=16,L=1,m=2),
                  'XMRN0':dict(W=2,L=8,m=15),'XMRP2':dict(W=4,L=4,m=6)})    # I35 = 4*3.75/6 = 2.5
    for n in ['XM9','XM1','XM24','XM13']: P[n]=dict(m=inm)
    P.update(c1(cw,rz)); return P
