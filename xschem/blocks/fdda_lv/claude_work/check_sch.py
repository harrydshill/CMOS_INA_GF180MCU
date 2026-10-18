import re,json,sys
import gen
sch=open(sys.argv[1]).read(); P=json.load(open(sys.argv[2]))
pins={'nfet':{'D':(20,-30),'G':(-20,0),'S':(20,30),'B':(20,0)},'pfet':{'D':(20,30),'G':(-20,0),'S':(20,-30),'B':(20,0)}}
def tf(px,py,r,f):
    if f: px=-px
    for _ in range(r): px,py=-py,px
    return px,py
wires=[(*map(float,m[:4]),m[4]) for m in re.findall(r'^N (\S+) (\S+) (\S+) (\S+) \{lab=([^}]*)\}',sch,re.M)]
labs=[(float(a),float(b),c) for a,b,c in re.findall(r'^C \{(?:lab_pin|lab_wire|ipin|opin|iopin)\.sym\} (\S+) (\S+) \S+ \S+ \{name=\w+ (?:sig_type=\S+ )?lab=([^}\s]+)',sch,re.M)]
def net_at(x,y):
    for a,b,c in labs:
        if abs(a-x)<.1 and abs(b-y)<.1: return c
    for x1,y1,x2,y2,n in wires:
        if min(x1,x2)-.1<=x<=max(x1,x2)+.1 and min(y1,y2)-.1<=y<=max(y1,y2)+.1 and (x1==x2 or y1==y2): return n
    return None
S={}
for m in re.finditer(r'^C \{symbols/(nfet|pfet)_03v3\.sym\} (\S+) (\S+) (\S+) (\S+) \{name=(\w+)\n(.*?)\}\n',sch,re.S|re.M):
    t,x,y,r,f,name,body=m.groups(); a=dict(re.findall(r'(?m)^(\w+)=(\S+)$',body))
    nets=[]
    for p in 'DGSB':
        px,py=pins[t][p]; dx,dy=tf(px,py,int(r),int(f)); nets.append(net_at(float(x)+dx,float(y)+dy))
    S['X'+name]=(nets,a['W'],a['L'],a['m'])
_,fd=gen.build(P,{'nobuf','replica'})
bad=0; n=0
for l in gen.lines(fd):
    if l.startswith('XM') and 'fet_03v3' in l:
        p=l.split(' '); name=p[0]; nets=p[1:5]
        W=re.search(r' W=(\S+)',l).group(1); L=re.search(r' L=(\S+)',l).group(1); m=re.search(r' m=(\S+)',l).group(1)
        n+=1
        if name not in S: print('MISSING in sch',name); bad+=1; continue
        sn,sW,sL,sm=S[name]
        netok=all((a is None) or b.startswith('net') or a.lower()==b.lower() or a.startswith('#') for a,b in zip(sn,nets))
        if not netok or (sW,sL,sm)!=(W,L,m): bad+=1; print('DIFF',name,'sch',sn,sW,sL,sm,'| sim',nets,W,L,m)
for k in S:
    if k not in [l.split(' ')[0] for l in gen.lines(fd)]: print('EXTRA in sch',k)
# caps / resistors
for nm in ['C4','C6','R2','R4']:
    b=re.search(r'\{name='+nm+r'\n(.*?)\}',sch,re.S).group(1); print(nm,dict(re.findall(r'(?m)^(W|L)=(\S+)$',b)))
print(f'checked {n} transistors, mismatches: {bad}')
