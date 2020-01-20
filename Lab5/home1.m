
t = 0:0.02:0.18;
vs=[0.976 0.329 -0.279 -0.408 -0.141 0.144 0.143 0.009 -0.072 -0.047];%[V]
F = @(a,f) sum(2.*t.*exp(-a.*t).*cos(2.*pi.*f.*t).*(vs - exp(-a.*t).*cos(2.*pi.*f.*t)));
G = @(a,f) sum(4.*t.*pi.*exp(-a.*t).*sin(2.*pi.*f.*t).*(vs - exp(-a.*t).*cos(2.*pi.*f.*t)));
a = 10;
f0 = 10;
err = 0.03*ones(size(vs));

[dfda, dfdw]=pder(F,a,a/1e4,f0,f0/1e4);
[dgda, dgdw]=pder(G,a,a/1e4,f0,f0/1e4);

A=[dfda dfdw ; dgda dgdw];

while(abs(F(a,f0))+abs(G(a,f0))>0.00000001)
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


errorbar(t,vs,err,'*');
hold on;
t = linspace(0,0.18);
plot(t,exp(-a.*t).*cos(2*pi*f0.*t));
