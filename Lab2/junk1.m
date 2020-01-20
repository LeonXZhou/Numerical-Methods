
f = @(x,y) log(x/sqrt(x^2+y^2))*sqrt(10+cos(x));
er = errprop(f,1.2,.1,3.0,0.2)