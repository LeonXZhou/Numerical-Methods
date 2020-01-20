
a = -.5;
b = .5;
N = 20
ab = linspace(a,b,N+1);
f = @(z) exp(-(z^2)/2);
err = 0;
    for i = 1:20;
        h = (ab(i+1)-ab(i))/2;
        err = err + (h/3)*(f(ab(i))+4*f((ab(i)+ab(i+1))/2)+f(ab(i+1)));
    end
err = err/sqrt(2*pi);


