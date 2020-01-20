function C = Cdft(v)

N = size(v,2);
t = (0:1:size(v,2)-1);

a = zeros(1,N);
b = zeros(1,N);

a(1) = 2*mean(v);

for j = 1:size(a,2)-1
    a(j+1) = 2.*mean(v.*(1/2).*(exp(1i.*2.*pi.*(j).*t./size(v,2))+exp(-2.*1i.*pi.*(j).*t./size(v,2))));
end


for j = 1:size(b,2)-1
    b(j+1) = 2.*mean(v.*(1/2).*(exp(1i.*2.*pi.*(j).*t./size(v,2))-exp(-2.*1i.*pi.*(j).*t./size(v,2))));
end

C = (1/2)*(a-b);
end