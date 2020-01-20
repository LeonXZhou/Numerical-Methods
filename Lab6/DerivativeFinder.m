syms x y A B k vb;
v(x,y) = (exp(-k.*x).*(A.*sin(k.*y)+B.*cos(k.*y))-vb).^2;
Vk = diff(v,k)
VA = diff(v,A)
VB = diff(v,B)
