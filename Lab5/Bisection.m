function b = Bisection(f,x1,x2)
for i = 1:1000000
    if ((f((x2+x1)/2)*f(x2))>0)
        x2 = ((x2+x1)/2);
    end
    if (f((x2+x1)/2)*f(x2)<0)
        x1 = ((x2+x1)/2);
    end    
    
end
b = ((x2+x1)/2);
end
