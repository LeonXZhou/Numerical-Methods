function AB = UpTri(AB)
N= size(AB);
for i = 1:N(1)-1
    AB(i:N(1),i:N(2)) = Elim(AB(i:N(1),i:N(2)));
end
end