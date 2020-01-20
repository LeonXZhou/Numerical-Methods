function regressionplot(x,y,dy,Htitle,xtitle,ytitle)
[A,B,dA,dB]= wregression(x,y,dy);

if(x(1)>x(length(x)))
x1 = linspace(0,x(1),1000);
end

if(x(1)<x(length(x)))
x1 = linspace(0,x(length(x)),1000);
end

y1 = A + B*x1;
err = dy;

figure 
plot(x1,y1);

hold on;
errorbar(x,y,err,'*');
hold on;
legend('Z^{2} = 766.0\Omega + \omega^{2} 123.2mH','Expieremental Data Points');

title(Htitle)
ylabel(xtitle)
xlabel(ytitle)
end
