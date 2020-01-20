% generate grid coordinates to plot the field in the x-z plane
[X,Z]=meshgrid(-0.05:0.01:0.05,-.05:.01:.1);
[Nr,Nc]=size(X); % calculate the number of rows and cols.
Bx=zeros(size(X)); By=zeros(size(X)); By=zeros(size(X)); 
for n=1:Nr
 for m=1:Nc
 [Bx(n,m),By(n,m),Bz(n,m)]=bfield(X(n,m),0,Z(n,m));
 end
end % plot the field
bfield(.01,.02,.03);
quiver(X,Z,Bx,Bz); xlabel('x-axis'); ylabel('z-axis'); axis equal; 