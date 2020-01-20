function [A1,B1,C,D1]=nspline(X,Y)
A = zeros(length(X),length(X));
A(1,1) = 1;
A(length(X),length(X)) = 1;
B = zeros(length(X),1);

A1 = zeros(length(X)-1,1);
B1 = zeros(length(X)-1,1);
C = zeros(length(X)-1,1);
D1 = zeros(length(X)-1,1);
for i = 2:length(X)-1
    count = 1;
    H1 = X(i)-X(i-1)
    H2 = X(i+1)-X(i)
    for j = i-1:i+1
        
        if (count ==1)
            A(i,j) = H1;
        end
        
        if (count == 2)
            A(i,j) = 2*(H1+H2);
        end
        
        if (count == 3)
            A(i,j) = H2;
        end
        count = count +1 ;
    end
    B(i) = 3*((Y(i+1)-Y(i))/(H2)-(Y(i)-Y(i-1))/(H1)) 
end

AB=[A,B];
C=backTrack(AB);

for i = 1:length(X)-1
    h = (X(i+1)-X(i));
    A1(i) = Y(i);
    B1(i) = (Y(i+1)-Y(i))/h -(2*C(i)+C(i+1))*h/3;
    D1(i) = (C(i+1)-C(i))/(3*h);
end


end