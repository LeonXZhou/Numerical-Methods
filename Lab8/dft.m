function [a,b] = dft(v)

N = floor(size(v,2)/2);
t = (0:1:size(v,2)-1);

a = zeros(1,N+1);
b = zeros(1,N+1);

a(1) = 2*mean(v);

for i = 1:size(a,2)-1
    a(i+1) = 2*mean(v.*cos(2*pi*(i)*t./size(v,2)));
end

for i = 1:size(b,2)-1
    b(i+1) = 2*mean(v.*sin(2*pi*(i)*t./size(v,2)));
end

end