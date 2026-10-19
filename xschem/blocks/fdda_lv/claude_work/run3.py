import sw,json
pairs=[(2,4),(4,6),(6,8),(4,4),(6,6)]
cfgs=[]
for base in [dict(mn=16,mp=16,ibn=7,ibp=5),dict(mn=14,mp=14,ibn=7,ibp=5)]:
  for m36,k2 in pairs:
    for m35,k4 in pairs:
      if (m36,k2,m35,k4)==(4,6,4,6): continue
      cfgs.append(dict(base,m36=m36,k2=k2,m35=m35,k4=k4))
out=open('run3.jsonl','w')
for c in cfgs:
    try: s=sw.ev(c)
    except Exception as e: print(c,e); continue
    out.write(json.dumps(s,default=float)+'\n'); out.flush()
print('FINISHED')
