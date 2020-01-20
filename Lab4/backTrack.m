function X = backTrack(AB)

S = size(AB);
X = zeros(S(1),1);
for i= 1:S(1)
    X(S(1)-i+1) = (AB(S(1)-i+1,S(2))-dot(X,AB(S(1)-i+1,1:S(1))))/AB(S(1)-i+1,S(1)-i+1);
end

end
