function dZSq = dZsquared(V,I,dV,dI)
dZSq=((zSquared(V+dV,I)-zSquared(V,I)).^2+(zSquared(V,I+dI)-zSquared(V,I)).^2).^0.5;
end
