import json,copy
P11=json.load(open('P11.json'))
U=lambda m: dict(W=8,L=2,m=m)
def S13(mn,mp,ibn,ibp,k1=2,k3=2,m36=6,k2=None,m35=4,k4=None,i36=5.0,i35=3.0,cw=44,rz=28):
    # floating replicas chosen so device density = chain density: I36=ibn*m36/k2, I35=ibp*m35/k4
    if k2 is None: k2=max(2,2*round(ibn*m36/i36/2))
    if k4 is None: k4=max(2,2*round(ibp*m35/i35/2))
    P=copy.deepcopy(P11)
    P.update({'XMRP0':dict(W=2,L=8,m=4*ibn),'XMRN0':dict(W=2,L=16,m=4*ibp),
              'XM14':U(mn),'XM37':U(mn),'XMRN1':U(k1),'XM33':U(mp),'XM34':U(mp),'XMRP1':U(k3),
              'XM36':U(m36),'XM32':U(m36),'XMRN2':U(k2),'XM35':U(m35),'XM30':U(m35),'XMRP2':U(k4)})
    for c in ['XC4','XC6']: P[c]=dict(c_width=f'{cw}e-6',c_length=f'{cw}e-6')
    for r in ['XR2','XR4']: P[r]=dict(r_width='2e-6',r_length=f'{rz}e-6')
    info=dict(Iq_n=ibn*mn/k1,Iq_p=ibp*mp/k3,I36=ibn*m36/k2,I35=ibp*m35/k4,k2=k2,k4=k4)
    return P,info
