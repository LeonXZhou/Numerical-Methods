v = linspace(0,6,1000);
t = linspace(0,6,1000);
for i = 1:length(v)-1
    if (v(i) < 1)
        v(i) = 8;
    end
    if (v(i) > 1 && v(i)<5)
        v(i) = 4;
    end
    if (v(i) > 5 && v(i)<6)
        v(i) = 0;
    end
    
end
x = fft(v(1,1:999))
kmax = 1000/2;

fpos = 1:1:kmax;
fneg = -kmax+1:1:-1;
f = [fpos,fneg];
plot(f/6,abs(x),'*');

