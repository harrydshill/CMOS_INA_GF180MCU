import json,copy,sys,itertools,numpy as np,sim
P12=json.load(open('P12.json'))
def U(m,W=8,L=2): return dict(W=W,L=L,m=m)
def mk(mn,mp,ibn,ibp,k1=2,k3=2,m36=4,k2=6,m35=4,k4=6,W=8,L=2):
    assert all(x%2==0 for x in [mn,mp,k1,k3,m36,k2,m35,k4,W,L])
    P=copy.deepcopy(P12)
    P.update({'XMRP0':dict(W=2,L=8,m=4*ibn),'XMRN0':dict(W=2,L=16,m=4*ibp),
      'XM14':U(mn,W,L),'XM37':U(mn,W,L),'XMRN1':U(k1,W,L),'XM33':U(mp,W,L),'XM34':U(mp,W,L),'XMRP1':U(k3,W,L),
      'XM36':U(m36,W,L),'XM32':U(m36,W,L),'XMRN2':U(k2,W,L),'XM35':U(m35,W,L),'XM30':U(m35,W,L),'XMRP2':U(k4,W,L)})
    return P
def ev(cfg,slew=False):
    P=mk(**cfg); s,A=sim.evaluate(P,{'nobuf','replica'},str(cfg),do_slew=slew,quiet=True)
    s['cfg']=cfg; return s
def fmt(s): return f"UGF {s['ugf']:.3f} PM {s['pm']:.1f} GM {s['gm']:.1f} Aol {s['aol']:.1f} Idd {s['idd']:.1f} Iq {s['iq']:.1f}-{s['iqmax']:.1f} CMPM {s['cmpm']:.1f}"+(f" SR {s['sr_rise']:.2f}/{s['sr_fall']:.2f} asym {s['sr_asym']:.0f}%" if 'sr_rise' in s else '')
