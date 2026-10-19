import json,sys
R=[]
for f in sys.argv[1:]: R+=[json.loads(l) for l in open(f)]
def score(s): return min(s['pm']-35,(s['ugf']-1)*100,s['cmpm']-35)
ok=[s for s in R if s['idd']<=150 and s['ugf']>=1.0 and s['pm']>=35 and s['cmpm']>=35]
ok.sort(key=lambda s:-score(s))
for s in ok[:25]:
  c=s['cfg']; ex=' '.join(f'{k}{v}' for k,v in c.items() if k not in('mn','mp','ibn','ibp'))
  print(f"mn{c['mn']:3} mp{c['mp']:3} Ibn{c['ibn']} Ibp{c['ibp']} {ex}| UGF {s['ugf']:.3f} PM {s['pm']:5.1f} GM {s['gm']:5.1f} Aol {s['aol']:5.1f} Idd {s['idd']:6.1f} Iq {s['iq']:5.1f}-{s['iqmax']:5.1f} CMPM {s['cmpm']:5.1f} score {score(s):.1f}")
