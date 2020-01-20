clear
D= .05;
d = 0.005;
R = 0.025;
K = -.95*10^6;

Nphi = 10;
Nz = 10;
phia=0;
phib=2*pi;
Za=D+d;
Zb=2*D+d;
hphi = (phib-phia)/(2*Nphi);
hz = (Zb-Za)/(2*Nz);

[PHI,ZZ]= meshgrid(0:hphi:2*pi,Za:hz:Zb);

wphi=weight(PHI);
wzz=weight(ZZ);

[Nr,Nc]=size(PHI);
for n = 1:Nr
    for m = 1:Nc
        x = R.*cos(PHI(n,m));
        y = R.*sin(PHI(n,m));
        z = ZZ(n,m);
        
        [Bx,By,Bz]=bfield(x,y,z);
        kx = -K*sin(PHI(n,m));
        ky = K*cos(PHI(n,m));
        kz = 0;
        
        argx(n,m) = (ky*Bz-kz*By)*R;
        argy(n,m) = (kx*Bz-kz*Bx)*R;
        argz(n,m) = (kx*By-ky*Bx)*R;
    end
end


Fx = (argx*wphi*hphi/3)'*wzz*hz/3
Fy = (argy*wphi*hphi/3)'*wzz*hz/3
Fz = (argz*wphi*hphi/3)'*wzz*hz/3