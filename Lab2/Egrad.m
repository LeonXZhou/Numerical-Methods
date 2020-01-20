function [Ex,Ey,Ez] = Egrad(V,x,y,z)
[Ex,Ey,Ez] = gradient(x,y,V,z);
Ex = Ex*-1;
Ey = Ey*-1;
Ez = Ez*-1;
end
