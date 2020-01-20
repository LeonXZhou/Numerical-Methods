R = 1 %m;
ro = 0.85
f = @(h)((1/3)*pi*(3*R*h^2-h^3))-(4/3)*pi*(R^3)*ro;

b = Bisection(f,.2,2*R);    

theta = linspace(0,pi);
phi = linspace(0,2*pi);
[T,P] = meshgrid(theta,phi);

x=R.*sin(T).*cos(P);
y=R.*sin(T).*sin(P);
z=R.*cos(T);

mesh(x,y,z+1-b);
hold on;

[X,Y] = meshgrid(linspace(-1,1),linspace(-1,1));
Z = zeros(size(X));

mesh(X,Y,Z);
hold on;