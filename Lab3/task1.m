D=importdata('HysteresisIron-orig.csv');
vx=D.data(:,2); vy=D.data(:,3);
plot(vx,vy)
A = 0;
x=0;
y1=0;
y2=0;
for i = 2:size(vx);
    x = vx(i)-vx(i-1);
    y1 = vy(i);
    y2 = vy(i-1);
    A = A + ((y1+y2)/2)*x
end
A = -A;