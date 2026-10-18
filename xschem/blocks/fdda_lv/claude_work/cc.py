def cc(w1,r1,w2,r2):
    d={}
    for a,b in [('XC4','XR2'),('XC6','XR4')]: d[a]=dict(c_width=f'{w1}e-6',c_length=f'{w1}e-6'); d[b]=dict(r_length=f'{r1}e-6')
    for a,b in [('XC7','XR5'),('XC8','XR6')]: d[a]=dict(c_width=f'{w2}e-6',c_length=f'{w2}e-6'); d[b]=dict(r_length=f'{r2}e-6')
    return d
