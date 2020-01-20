    
a = 0;
b = pi/2;
c = 0;
d = pi/4;
N = 10;
Ntheta = linspace(a,b,N+1);
Nphi = linspace(c,d,N+1);


thetaIa = Ntheta(1:length(Ntheta)-1);
thetaIb = Ntheta(2:length(Ntheta));
thetaIba = thetaIa+thetaIb;

Icos = sum(((thetaIb-thetaIa)/6).*(cos(thetaIa)+4.*cos((thetaIba)/2)+cos(thetaIb)));

phiIa = Nphi(1:length(Nphi)-1);
phiIb = Nphi(2:length(Nphi));
phiIba = phiIa+phiIb;

Isin = sum(((phiIb-phiIa)/6).*(sin(phiIa)+4.*sin((phiIba)/2)+sin(phiIb)))

c = 10 * Isin* Icos
