function C = Cdft(v)

N = size(v,2);
t = (0:1:size(v,2)-1);

a = zeros(1,N);
b = zeros(1,N);


for j = 1:size(a,2)
    a(j) = 2.*mean(v.*(1/2).*(exp(1i.*2.*pi.*(j-1).*t./size(v,2))+exp(-2.*1i.*pi.*(j-1).*t./size(v,2))));
    b(j) = 2.*mean(v.*(1/2).*(exp(1i.*2.*pi.*(j-1).*t./size(v,2))-exp(-2.*1i.*pi.*(j-1).*t./size(v,2))));
end

C = (1/2)*(a-b);
end