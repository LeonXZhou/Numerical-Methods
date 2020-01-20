function dy = errprop(f,a,da,b,db)
switch nargin
    case 5
        [x,y] =pder(f,a,da,b,db);
        dy = sqrt((x.*da).^2+(y.*db).^2);
    case 3
        dy = sqrt((pder(f,a,da).*da).^2);
end %end function