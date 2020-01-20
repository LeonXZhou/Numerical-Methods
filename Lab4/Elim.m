function ab = Elim(AB)
N= size(AB);
AB = Pivot(AB);
for i = 2:N(1)
    AB(i:N(1),:) = Pivot(AB(i:N(1),:));
    AB(i,:) = AB(i,:)-AB(1,:).*(AB(i,1)/AB(1,1));
end
ab = AB;
end