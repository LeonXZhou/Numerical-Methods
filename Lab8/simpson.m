function [Q] = simpson(f,n,a,b)
h = ((b-a)/n)*2;
x = a:h:b;
w = ones(1,length(x));
w(3:2:length(x)) = 2;
w(2:2:length(x)-2) = 4;
y = f(x);
Q = sum(y.*w*h/3);
end