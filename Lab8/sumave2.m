function ave = sumave2(T,N,k,m)
v = @(t) cos(2*pi*k*(1/T)*t).*cos(2*pi*m*(1/T)*t);

ave = mean(v(values(T,N)));

if (abs(ave)<10*eps(1))
    ave = 0;
end
figure;
plot((values(T,N)),v(values(T,N)));
end