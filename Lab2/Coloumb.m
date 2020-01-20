function [Ex,Ey,Ez] = Coloumb(x,y,z)
Ex = (x/(x^2+y^2+z^2)^(1/2))/(x^2+y^2+z^2);
Ey = (y/(x^2+y^2+z^2)^(1/2))/(x^2+y^2+z^2);
Ez = (z/(x^2+y^2+z^2)^(1/2))/(x^2+y^2+z^2);
end
