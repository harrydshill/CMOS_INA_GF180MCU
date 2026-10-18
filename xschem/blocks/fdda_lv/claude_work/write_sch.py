import re,json,sys
src='/mnt/user-data/uploads/CMOS_INA_GF180MCU/xschem/blocks/fdda_lv/fdda_lv.sch'
P=json.load(open(sys.argv[1])); out=sys.argv[2]
s=open(src).read()
for pat,rep in [(r'(C \{lab_pin\.sym\} 770 -320 0 0 \{name=p45 sig_type=std_logic lab=)vb2\}',r'\1vbpab}'),
                (r'N 660 -320 850 -320 \{lab=vb2\}','N 660 -320 850 -320 {lab=vbpab}'),
                (r'(C \{lab_pin\.sym\} 740 -260 2 0 \{name=p21 sig_type=std_logic lab=)IBIAS\}',r'\1vbnab}'),
                (r'N 740 -260 770 -260 \{lab=IBIAS\}','N 740 -260 770 -260 {lab=vbnab}')]:
    s,n=re.subn(pat,rep,s); assert n==1,pat
amap={'c_width':'W','c_length':'L','r_length':'L'}
def edit(s,name,kw):
    pat=re.compile(r'(^C \{[^}]*\} [^{]*\{name='+re.escape(name)+r'\n)(.*?)(\}\n)',re.S|re.M)
    ms=list(pat.finditer(s)); assert len(ms)==1,(name,len(ms))
    m=ms[0]; body=m.group(2)
    for p,v in kw.items():
        a=amap.get(p,p); v=str(v)
        if p in ('W','L'): v=v+'u'
        body,k=re.subn(r'(?m)^'+a+r'=\S+$',f'{a}={v}',body); assert k==1,(name,a)
    return s[:m.start()]+m.group(1)+body+m.group(3)+s[m.end():]
new={k:v for k,v in P.items() if k.startswith('XMR')}
for k,kw in P.items():
    if k not in new: s=edit(s,k[1:],kw)
X0=-1200; Y0=-700
tmpl='''C {{symbols/{t}_03v3.sym}} {x} {y} 0 0 {{name={name}
L={L}u
W={W}u
nf=1
m={m}
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model={t}_03v3
spiceprefix=X
}}
'''
pins={'nfet':{'D':(20,-30),'G':(-20,0),'S':(20,30),'B':(20,0)},'pfet':{'D':(20,30),'G':(-20,0),'S':(20,-30),'B':(20,0)}}
devs=[('MRP0','pfet',dict(D='vbnab',G='vb1',S='PSUP_LV',B='PSUP_LV'),0,0),
      ('MRN2','nfet',dict(D='vbnab',G='vbnab',S='abn1',B='NSUP'),0,150),
      ('MRN1','nfet',dict(D='abn1',G='abn1',S='NSUP',B='NSUP'),0,300),
      ('MRP1','pfet',dict(D='abp1',G='abp1',S='PSUP_LV',B='PSUP_LV'),300,0),
      ('MRP2','pfet',dict(D='vbpab',G='vbpab',S='abp1',B='PSUP_LV'),300,150),
      ('MRN0','nfet',dict(D='vbpab',G='vb3',S='NSUP',B='NSUP'),300,300)]
add=[f'T {{Class-AB replica bias: each device = same unit cell as the device it biases (m-ratio matched)}} {X0-60} {Y0-140} 0 0 0.3 0.3 {{}}\n']; pid=900
for name,t,conn,dx,dy in devs:
    x,y=X0+dx,Y0+dy; kw=new['X'+name]
    add.append(tmpl.format(t=t,x=x,y=y,name=name,L=kw['L'],W=kw['W'],m=kw['m']))
    for p,(px,py) in pins[t].items():
        pid+=1; rot='2 0' if p=='G' else '0 1'
        add.append(f'C {{lab_pin.sym}} {x+px} {y+py} {rot} {{name=p{pid} sig_type=std_logic lab={conn[p]}}}\n')
s=s.rstrip('\n')+'\n'+''.join(add)
assert not re.search(r'name=p9(0[1-9]|[1-2]\d)\b',open(src).read()), 'label name clash'
open(out,'w').write(s); print('written',out)
