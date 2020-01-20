function [Bx,By,Bz] = bfield(x1,y1,z1)
D = .05;
Nphi = 10;
Nz = 10;
phia=0;
phib=2*pi;
Za=0;
Zb=0.05;

hphi = (phib-phia)/(2*Nphi);
hz = (Zb-Za)/(2*Nz);

[PHI,ZZ]= meshgrid(0:hphi:2*pi,0:hz:D)

wphi=weight(PHI);
wzz=weight(ZZ);


[argx,argy,argz]=args(x1,y1,z1, PHI, ZZ);

Bx =(argx*wphi*hphi/3)'*wzz*hz/3
By =(argy*wphi*hphi/3)'*wzz*hz/3
Bz =(argz*wphi*hphi/3)'*wzz*hz/3

end