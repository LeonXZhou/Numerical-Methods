kmax = 50;
fpos = 0:1:kmax;
t = 0:25/100:25-25/100;
if (mod(length(vtotal),2)== 0)
    fneg = -kmax+1:1:-1;
else
    fneg = -kmax:1:-1;
end

f = [fpos,fneg];
fnot = 0.04;
f = f*fnot;

Zc = @(w) 1./(1i.*w.*2.*pi.*0.2);
Zl = @(w) 1i.*w.*0.2.*2.*pi;
Zin = zeros(1,length(f));
H  = zeros(1,length(f));
for i = 1:length(f)
    ABCD = SS(0.2)*SS(Zl(f(i)))*PP(Zc(f(i)));
    Zin(i) = ABCD(1,1)/ABCD(2,1);
    H(i)=1/ABCD(1,1);
end
Transfer = Cidft(H);
plot(f,abs(Zin),'*');
figure
plot(t,real(Transfer));
%resonance is 0.8Hz  

