R=10; L=5; N=length(vs)
VS=cdft(vs)
kmax=floor(N/2)
if N is even: k=[0:kmax, -kmax+1:-1]
if N is odd: k=[0:kmax, -kmax:-1]
ZL=1j*2*pi*k*f0*L
H=ZL./(R+ZL)
VL=VS.*H
vl=cidft(VL) 