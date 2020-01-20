function [R,C] = capacitorAnalyser(f,V,I,dV,dI)
zSq = zSquared(V,I);
dZSq=((zSquared(V+dV,I)-zSquared(V,I)).^2+(zSquared(V,I+dI)-zSquared(V,I)).^2).^0.5;

[R2,C2,dR2,dL2] = wregression(1./(f.^2),zSq,dZSq);

R = sqrt(R2);
C = (sqrt(C2));
dR = abs(sqrt(R2+dR2)-sqrt(R2));
dC = (abs(sqrt(C2+dL2)-sqrt(C2)));
percentErrorC=dC/C;
C = (1/sqrt(C2));
dC = percentErrorC*C;
fprintf('R2 = %4.1f +/- %2.2f ohms and therefore R=0 and C = %1.3f +/- %2.4f micro F \n',R2,dR2,C*1000000,dC*100000);
regressionplot(1./(f.^2),zSq,dZSq,'Behavior of an Capacitor with Varying Frequency','Impedance Squared(ohm^{2})','Freque    ncy S   quared (Hz^{2})');
end
