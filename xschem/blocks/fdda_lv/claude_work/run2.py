import sw,json
cfgs=[]
for mn in [14,16,18,20]:
  for r in [1,1.25,1.5]:
    mp=int(round(mn*r/2)*2)
    for ibn,ibp in [(5,4),(6,4),(7,4),(7,5),(6,5),(7,3)]:
        cfgs.append(dict(mn=mn,mp=mp,ibn=ibn,ibp=ibp))
out=open('run2.jsonl','w')
for c in cfgs:
    try: s=sw.ev(c)
    except Exception as e: print(c,e); continue
    out.write(json.dumps(s,default=float)+'\n'); out.flush()
print('FINISHED')
