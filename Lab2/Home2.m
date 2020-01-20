V = @(x,y,z) 1/(x^2+y^2+z^2)^(1/2);
[ex,ey,ez]=Egrad(V,1,2,3)
[exc,eyc,eyz] = Coloumb(1,2,3)