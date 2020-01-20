
[v] = pulse(100);
t = 0:2/100:2-2/100;
plot(t,v);
kmax = floor(length(v)/2);
fpos = 0:1:kmax;
if (mod(length(v),2)== 0)
    fneg = -kmax+1:1:-1;
else
    fneg = -kmax:1:-1;
end

f = [fpos,fneg];
fnot = 1/2;
f = f*fnot;
C = Cdft(v);
figure;
plot(f,abs(C),'*');

H = 1i.*2.*pi.*f;

dC = C.*H;

v =Cidft(dC);
figure;
plot(t,real(v));

