X = [1,3,5,9,10,14];
Y = [2,3,4,5,3,3.5];
[Ar] = polyInt(X,Y);

x1 = linspace(1,14);
plot(X,Y,'*');
hold on;
y1 = 0;

for i = 1:length(Y)
    y1 = y1 + Ar(length(Y)-(i-1))*x1.^(length(Y)-i);
end

plot(x1,y1);
hold on;
[A1,B1,C,D1]=nspline(X,Y);

for i = 1:length(Y)-1
    x1 = linspace(X(i),X(i+1));
    y1 = A1(i)+B1(i).*(x1-X(i))+C(i).*(x1-X(i)).^2+D1(i).*(x1-X(i)).^3;
    hold on;
    plot(x1,y1);
end
