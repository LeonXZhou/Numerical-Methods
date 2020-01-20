function AB = iUpTri(AB)
N= size(AB)
for i = 1:N(1)-1
    AB(i:N(1),i:N(2)) = iElim(AB(i:N(1),i:N(2)))
end
end