function w=weight(z)
Nx=length(z);
w=ones(Nx,1);
w(2:1:Nx-1) = 2;
w(2:2:Nx-1) = 4;
end %function weight 