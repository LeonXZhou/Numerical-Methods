function ave = sumave(T,N,k)
v = @(t) cos(2*pi*k*(1/T)*t);
ave = mean(v(values(T,N)));
if (abs(ave)<10*eps(1))
    ave = 0;
end
figure;
plot((values(T,N)),v(values(T,N)));
end
