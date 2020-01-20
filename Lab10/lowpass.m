function H=lowpass(f)
Rs = 50;
L = 2.63;
C = 4.35*10^-4;
Rl = 50;
Zc = @(w) 1./(1i.*w.*2.*pi.*C);
Zl = @(w) 1i.*w.*L.*2.*pi;

H = ((1./(Zc(f))+1./(Rl)).^-1)./(Rs+Zl(f)+(1./(Zc(f))+1./(Rl)).^-1);
end
