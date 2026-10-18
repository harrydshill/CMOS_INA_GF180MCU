"""Netlist generator for fdda_lv experiments. Starts from user's last xschem netlist (tb_fdda_lv_aol.spice)."""
import re
SRC='/mnt/user-data/uploads/CMOS_INA_GF180MCU/xschem/blocks/fdda_lv/simulation/tb_fdda_lv_aol.spice'
RAW=open(SRC).read()
TOP=RAW[:RAW.index('.subckt fdda_lv')]
FD=RAW[RAW.index('.subckt fdda_lv'):]
FD=FD[:FD.index('.ends')+5]
PM="ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)'\n+ ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0"
def mos(name,d,g,s,b,typ,W,L,m):
    return f"{name} {d} {g} {s} {b} {typ}_03v3 L={L}u W={W}u nf=1 {PM} m={m}"
def lines(t): return t.replace('\n+',' \x00').split('\n')
def join(ls): return '\n'.join(ls).replace(' \x00','\n+')
def setp(fd,name,**kw):
    ls=lines(fd); hit=0
    for i,l in enumerate(ls):
        if l.split(' ')[0]==name:
            for p,v in kw.items():
                if p in ('W','L'): v=f'{v}u'
                if p=='nodes':
                    parts=l.split(' '); n=len(v); parts[1:1+n]=v; l=' '.join(parts); continue
                l,n=re.subn(r'(?<=\s)%s=\S+'%p,f'{p}={v}',l); assert n==1,(name,p)
            ls[i]=l; hit=1; break
    assert hit,name
    return join(ls)
def getp(fd,name):
    for l in lines(fd):
        if l.split(' ')[0]==name:
            d={k:v for k,v in re.findall(r'(?<=\s)(W|L|m|c_width|c_length|r_length)=(\S+)',l)}
            return d
def build(P, topo):
    """P: {inst:{W,L,m,c_width,...}} ; topo: set of flags"""
    fd=FD
    add=[]
    if 'nobuf' in topo:
        ls=[l for l in lines(fd) if not re.match(r'x[12] PSUP_LV pab',l)]
        fd=join(ls)
        fd=setp(fd,'XM33',nodes=['Vo-','n10']); fd=setp(fd,'XM34',nodes=['Vo+','n9'])
    if 'replica' in topo:
        # floating-source gates move to dedicated replica-stack nodes
        fd=setp(fd,'XM36',nodes=['n10','vbnab']); fd=setp(fd,'XM32',nodes=['n9','vbnab'])
        fd=setp(fd,'XM35',nodes=['Vofcp','vbpab']); fd=setp(fd,'XM30',nodes=['Vofcn','vbpab'])
        add+=[mos('XMRN1','abn1','abn1','NSUP','NSUP','nfet',4,1,1),   # replica of M14 (unit)
              mos('XMRN2','vbnab','vbnab','abn1','NSUP','nfet',4,1,1), # replica of M36
              mos('XMRP0','vbnab','vb1','PSUP_LV','PSUP_LV','pfet',2,8,4), # current source (M7 unit)
              mos('XMRP1','abp1','abp1','PSUP_LV','PSUP_LV','pfet',4,1,1), # replica of M33
              mos('XMRP2','vbpab','vbpab','abp1','PSUP_LV','pfet',4,1,1), # replica of M35
              mos('XMRN0','vbpab','vb3','NSUP','NSUP','nfet',2,8,4)]    # current sink (M11 unit)
    if 'splitmiller' in topo:
        add+=["XC7 net11 Vo- cap_mim_2f0fF c_width=30e-6 c_length=30e-6 m=1",
              "XR5 n10 net11 PSUP_LV ppolyf_u_1k r_width=1e-6 r_length=6e-6 m=1",
              "XC8 net12 Vo+ cap_mim_2f0fF c_width=30e-6 c_length=30e-6 m=1",
              "XR6 n9 net12 PSUP_LV ppolyf_u_1k r_width=1e-6 r_length=6e-6 m=1"]
    if add:
        i=fd.rindex('.ends'); fd=fd[:i]+'\n'.join(add)+'\n'+fd[i:]
    for name,kw in P.items(): fd=setp(fd,name,**kw)
    return TOP, fd+'\n'
