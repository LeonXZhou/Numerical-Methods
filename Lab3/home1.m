global R K mu N D
R = 0.025;
D = .05;
K = .95*10^6;
mu = 4*pi*10^-7;
argx = @(x1,y1,z1,phi,z) ((mu.*R)/(4.*pi.*((x1-R.*cos(phi)).^2+(y1-R.*sin(phi)).^2+(z1-z).^2).^(3/2)))*((K.*cos(phi)).*(z1-z)-(0).*(y1-R.*sin(phi)));
argy = @(x1,y1,z1,phi,z) ((mu.*R)/(4.*pi.*((x1-R.*cos(phi)).^2+(y1-R.*sin(phi)).^2+(z1-z).^2).^(3/2)))*((z1-z).*K.*sin(phi));
argz = @(x1,y1,z1,phi,z) ((mu.*R)/(4.*pi.*((x1-R.*cos(phi)).^2+(y1-R.*sin(phi)).^2+(z1-z).^2).^(3/2)))*((x1-R.*cos(phi)).*(K.*cos(phi))-(y1-R.*sin(phi)).*(K.*-sin(phi)));
x1=0.01,	y1=0.02,	z1=0.03,	phi=pi/6,	z=0.05
[argx,argy,argz] = args(x1,y1,z1,phi,z)