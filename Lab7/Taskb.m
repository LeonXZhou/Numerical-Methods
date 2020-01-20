X = [0.01 0.06 0.4 0.9 1.0]; 
Y = [0.04 0.1 0.2 0.05 0];

B = [sum(Y.*X.^(1/2));sum(Y.*X);sum(Y.*X.^(2));sum(Y.*X.^(3));sum(Y.*X.^(4))];
A = [sum(X),sum(X.^(3/2)),sum(X.^(5/2)),sum(X.^(7/2)),sum(X.^(9/2));sum(X.^(3/2)),sum(X.^(2)),sum(X.^(3)),sum(X.^(4)),sum(X.^(5));sum(X.^(5/2)),sum(X.^(3)),sum(X.^(4)),sum(X.^(5)),sum(X.^(6));sum(X.^(7/2)),sum(X.^(4)),sum(X.^(5)),sum(X.^(6)),sum(X.^(7));sum(X.^(9/2)),sum(X.^(5)),sum(X.^(6)),sum(X.^(7)),sum(X.^(8))];
AB=[A,B]; 
ab=UpTri(AB);
X=backTrack(ab)
L = 1;
S=@(x) X(1)*(x/L).^(1/2)+X(2)*(x/L)+X(3)*(x/L).^2+X(4)*(x/L).^3+X(5)*(x/L).^4;

xplot = linspace(0,1,1000);
yplot = S(xplot);

plot(xplot,yplot)
hold on;
plot(xplot,-yplot);