import json,sys,sw,sim,mc,nz,numpy as np,ver,margins
C={'S12':dict(mn=16,mp=32,ibn=6,ibp=3),
   'A':dict(mn=16,mp=16,ibn=7,ibp=5),
   'B':dict(mn=16,mp=16,ibn=7,ibp=5,m36=2,k2=4,m35=2,k4=4),
   'C':dict(mn=12,mp=12,ibn=8,ibp=6)}
NC=['typical_t25_v330','ss_t125_v297','ff_tm40_v363','fs_t125_v297','sf_tm40_v363']
out={}
for tag,c in C.items():
    P=sw.mk(**c); json.dump(P,open(f'P_{tag}.json','w'))
    s,A=sim.evaluate(P,{'nobuf','replica'},tag)
    top,fd=sim.gen.build(P,{'nobuf','replica'}); ver.fd=fd
    K=sim.pmap(ver.cmkick,sim.CASES); B=sim.pmap(ver.step,sim.CASES); S=sim.slew(P,{'nobuf','replica'},[x['CASE'] for x in sim.CASES])
    rise=[min(r['vop_rise'],r['von_rise']) for r in S]; fall=[min(r['vop_fall'],r['von_fall']) for r in S]
    s.update(cm_settle=max(r['cm_settle'] for r in K),step_os=max(r['step_os'] for r in B),step_settle=max(r['step_settle'] for r in B),
             sr45_rise=min(rise),sr45_fall=min(fall),sr45_asym=max(abs(r['vop_rise']-r['vop_fall'])/max(r['vop_rise'],r['vop_fall'])*100 for r in S))
    m=mc.mcrun(P,{'nobuf','replica'},n=200); s['mc']=m
    N=nz.noise(P,{'nobuf','replica'},NC); s['noise']=[{k:v for k,v in r.items() if k not in('f','vn')} for r in N]
    np.save(f'noise_{tag}.npy',np.array([N[0]['f'],N[0]['vn']]))
    out[tag]=s; json.dump(out,open('cand.json','w'),default=float)
    print(tag,'done',{k:(round(v,3) if isinstance(v,float) else v) for k,v in s.items() if k not in('noise','mc')},m,flush=True)
    print('  margins:',flush=True); margins.margins(P)
print('FINISHED',flush=True)
