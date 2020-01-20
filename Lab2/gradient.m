function [Gx,Gy,Gz] = gradient(xx,yy,f,zz)
switch nargin
    case 3
        [Gx,Gy] = pder(f,xx,.001,yy,.001);
    case 4
        [Gx,Gy,Gz] = pder(f,xx,.001,yy,.01,zz,.001);
    otherwise
end

