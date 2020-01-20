function [tt,vv]=Fseries(t,v)
[a,b] = dft(v);
tend = t(length(t))+t(2);

tt = linspace(t(1),tend-tend/(100*length(t)),100*length(t));
vv = zeros(1,length(tt));

T = t(length(t))+t(2);
f0 = 1/T;
a
if (mod(length(v),2)==0)
    a(length(a))=a(length(a))/2; 
end

for i = 1:length(tt)
    vv(i) = vv(i) + a(1)/2;
    for j = 2:length(a)
        vv(i) = vv(i)+a(j)*cos(2*pi*(j-1)*tt(i)*f0)+b(j)*sin(2*pi*(j-1)*tt(i)*f0);
    end
end

plot(tt,vv);
end