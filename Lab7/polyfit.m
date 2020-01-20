function X = polyfit(M,x,y)

A = zeros(M+1);
B = zeros(M+1,1);
for i = 1:M+1
    for j = 1:M+1
        A(i,j) = sum(x.^(i+j-2));
    end
end

for i = 1:M+1
    B(i,1) = sum((x.^(i-1)).*y);
end

AB=[A,B]; 
ab=UpTri(AB);
X=backTrack(ab);

xplot = linspace(x(1),x(size(x,2)));
yplot = zeros(1,size(xplot,2));

for i = 1:size(xplot,2)
    for j = 1:size(X)
        yplot(i) = yplot(i) + X(j)*(xplot(i))^(j-1);
    end
end

plot(xplot,yplot);
hold on;
plot(x,y,'o');
end
