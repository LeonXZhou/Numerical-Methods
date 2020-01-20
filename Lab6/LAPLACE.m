step = 0.1;
x = 1:1:41;
y = 1:1:41;

V = zeros(41,41);
V(26,11:31)=10;
V(16,11:31)=-10;

for i=1:1000 % set up 100 iterations
    for n=2:40
        for m=2:40
            V(n,m)=1/4*(V(n-1,m)+V(n+1,m)+V(n,m-1)+V(n,m+1));
        end
    end
    V(26,11:31)=10;
    V(16,11:31)=-10;
end

[X,Y] = meshgrid(x,y);
[Gx,Gy] = gradient(V);
contour(x,y,V);
hold on;
quiver(x,y,Gx,Gy);