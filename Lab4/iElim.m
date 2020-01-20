function ab = iElim(AB)
N= size(AB)
for i = 2:N(1)
    AB(i,:) = AB(i,:)-AB(1,:).*(AB(i,1)/AB(1,1));
end
ab = AB;
end