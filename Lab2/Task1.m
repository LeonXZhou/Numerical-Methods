f = @(x) 10*sin(x);
dfdx= @(x) 10*cos(x);
x = linspace(-5,5);
y = abs(der(f,x,pi/(1))-dfdx(x));
min = 1;
for i =2:100000
    y2=abs(der(f,x,pi/(i))-dfdx(x));
     if(sum(y)>sum(y2))
         min = i;
         y = y2; 
     end
end %end for i
fprintf('%.d',min);
plot(x,y);

