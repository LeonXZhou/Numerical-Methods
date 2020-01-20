[v] = pulse(100);
t = 0:2/100:2-2/100;
vn=10*cos(2*pi*15*t); % noise signal
vtotal=v+vn;
figure
plot(t,vtotal);
figure

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
C = Cdft(vtotal);
plot(f,abs(C),'*');
count = 1;
while (f(count) < 7)
    count = count +1;
end

count2 = length(f);
while (f(count2) > -7)
    count2 = count2 -1;
end
C(count:count2) = 0+0*i;
v =Cidft(C);
figure;
plot(t,real(v));

