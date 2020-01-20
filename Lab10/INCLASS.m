[v] = pulse(400);
t = 0:2/400:2-2/400;
vn=10*cos(2*pi*90*t); % noise signal
vtotal=v+vn;
win=tukeywin(400)';
vtotal=vtotal.*win;

VS=Cdft(vtotal);

kmax = floor(length(v)/2);
fpos = 0:1:kmax;

if (mod(length(vtotal),2)== 0)
    fneg = -kmax+1:1:-1;
else
    fneg = -kmax:1:-1;
end

f = [fpos,fneg];
fnot = 1/2;
f = f*fnot;

H = lowpass(f);

logH=20*log10(abs(H)/max(abs(H)));
count = 1;
while (logH(count)>-3)
    fcutoff = f(count);
    count = count +1;
end
fprintf('f cutoff is %1.2f',fcutoff);
plot(f,logH,'*');
VL=VS.*H;

vl=Cidft(VL);

figure;
hold on;
plot(t,real(vl));
