function dydx = der(f,x,h)
dydx=(1/3)*(4*((f(x+h)-f(x-h))./(2*h))-((f(x+2*h)-f(x-2*h))./(4*h)));
end %ends dydx