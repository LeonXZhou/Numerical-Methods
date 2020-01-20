RL = 27.7;
w =1200*2*pi;
L =11.09935*10^-3;
C = .45917*10^-6;
ZL = RL+1i*w*L;
ZC = 1/(1i*w*C);

Zp = 1/(1/ZL+1/ZC)
magZp=abs(Zp)

Zs = ZL + ZC
magZs = abs(Zs)
abs(ZC)
abs(ZL)
V=(35.1*10^-3)*sqrt((27.7)^2*(11.0*10^-3)^2+(1200*2*pi)^2*(11.0*10^-3)^2)
