function a = Pivot(AB)
s = size(AB);
if (s(1) >1)
    [MaxValue,RowIndex]=max(abs(AB));
    temp = AB(RowIndex(1),:);
    AB(RowIndex(1),:)=AB(1,:);
    AB(1,:) = temp;
    a = AB;
end



a = AB;
end
