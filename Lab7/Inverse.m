function Ainv = Inverse(A)
if (abs(det(A)) < 0.00000000001)
    fprintf('determinant is zero bro');
    return
end

N = size(A);
I = eye(N(1));
c = horzcat(A,I);
c = UpTri(c);
    for i = 1:N(2)
    x = horzcat(c(:,1:N(2)),c(:,N(2)+i));
    Ainv(:,i)=backTrack(x);
    end
if(abs(sum(sum(A*Ainv))-sum(sum(I)))>0.0001*sum(sum(I)))
        fprintf('your matrix sucks');
        return;
end
end
