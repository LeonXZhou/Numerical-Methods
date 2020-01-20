function [a,f0] = fit(vs)
t = 0:0.02:0.18;
F = @(a,f) sum(2.*t.*exp(-a.*t).*cos(2.*pi.*f.*t).*(vs - exp(-a.*t).*cos(2.*pi.*f.*t)));
G = @(a,f) sum(4.*t.*pi.*exp(-a.*t).*sin(2.*pi.*f.*t).*(vs - exp(-a.*t).*cos(2.*pi.*f.*t)));
a = 10;
f0 = 10;
err = 0.03*ones(size(vs));

[dfda, dfdw]=pder(F,a,a/1e4,f0,f0/1e4);
[dgda, dgdw]=pder(G,a,a/1e4,f0,f0/1e4);

A=[dfda dfdw ; dgda dgdw];

while(abs(F(a,f0))+abs(G(a,f0))>0.0000001)
B=[-F(a,f0);-G(a,f0)];
AB=[A,B];
ab=UpTri(AB);
X=backTrack(ab);
a = a+X(1);
f0 = f0+X(2);
[dfda, dfdw]=pder(F,a,a/1e4,f0,f0/1e4);
[dgda, dgdw]=pder(G,a,a/1e4,f0,f0/1e4);
A = [dfda dfdw ; dgda dgdw];
end

end
