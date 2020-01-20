syms a;
syms f;
syms vs;
syms t;
z(a,f,vs,t) = ((exp(-a.*t))*cos(2*pi*f.*t)-vs).^2;

da = diff(z,a);
df = diff(z,f);