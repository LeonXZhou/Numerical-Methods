function [Ar] = polyInt(X,Y)
A = zeros(length(X),length(X));
B = zeros(length(X),1);
k = -1;
    for i = 1:length(X);
        for j = 1:length(X);
            A(i,j) = X(i).^(j-1);
        end
        B(i) = Y(i);
    end
AB=[A,B]; 
ab=UpTri(AB);
Ar=backTrack(ab);
end