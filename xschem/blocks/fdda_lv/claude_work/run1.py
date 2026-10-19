import sw,json,itertools
res=[]
cfgs=[]
for mn in [12,16,20,24]:
  for r in [1,1.5,2,2.5,3]:
    mp=int(round(mn*r/2)*2)
    for ibn,ibp in [(6,3),(6,4),(8,4),(6,6),(4,4),(8,6)]:
        cfgs.append(dict(mn=mn,mp=mp,ibn=ibn,ibp=ibp))
out=open('run1.jsonl','w')
for c in cfgs:
    try: s=sw.ev(c)
    except Exception as e: print(c,e); continue
    out.write(json.dumps(s,default=float)+'\n'); out.flush()
