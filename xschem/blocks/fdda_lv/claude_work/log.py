import json,os,copy
from sim import evaluate
LOG='/home/claude/w2/steps.json'
def step(tag,desc,P,topo,**kw):
    s,A=evaluate(P,topo,tag,**kw)
    L=json.load(open(LOG)) if os.path.exists(LOG) else []
    L=[x for x in L if x['tag']!=tag]
    L.append(dict(tag=tag,desc=desc,P=copy.deepcopy(P),topo=sorted(topo),res={k:float(v) for k,v in s.items()}))
    json.dump(L,open(LOG,'w'),indent=1)
    return s
