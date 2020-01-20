function [argx,argy,argz] = args(x1,y1,z1,phi,z)
R = 0.025;
K = .95*10^6;
mu = 4*pi*10^-7;

argxe = @(x1,y1,z1,phi,z) ((mu.*R)./(4.*pi.*((x1-R.*cos(phi)).^2+(y1-R.*sin(phi)).^2+(z1-z).^2).^(3/2))).*((K.*cos(phi)).*(z1-z)-(0).*(y1-R.*sin(phi)));
argye = @(x1,y1,z1,phi,z) ((mu.*R)./(4.*pi.*((x1-R.*cos(phi)).^2+(y1-R.*sin(phi)).^2+(z1-z).^2).^(3/2))).*((z1-z).*K.*sin(phi));
argze = @(x1,y1,z1,phi,z) ((mu.*R)./(4.*pi.*((x1-R.*cos(phi)).^2+(y1-R.*sin(phi)).^2+(z1-z).^2).^(3/2))).*((x1-R.*cos(phi)).*(K.*cos(phi))-(y1-R.*sin(phi)).*(K.*-sin(phi)));
argx = argxe(x1,y1,z1,phi,z);
argy = argye(x1,y1,z1,phi,z);
argz = -argze(x1,y1,z1,phi,z);
end