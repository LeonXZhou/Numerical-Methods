function [R,L] = inductorAnalyser(f,V,I,dV,dI)
zSq = zSquared(V,I);
dZSq=((zSquared(V+dV,I)-zSquared(V,I)).^2+(zSquared(V,I+dI)-zSquared(V,I)).^2).^0.5;

[R2,L2,dR2,dL2] = wregression(f.^2,zSq,dZSq);

R = sqrt(R2);
L = sqrt(L2)*1000;
dR = abs(sqrt(R2+dR2)-sqrt(R2));
dL = abs(sqrt(L2+dL2)-sqrt(L2))*1000;
fprintf('R = %4.1f +/- %2.2f ohms and L = %1.5f +/- %2.4f mH \n',R,dR,L,dL);
regressionplot(f.^2,zSq,dZSq,'Behavior of an Inductor with Varying Frequency','Impedance Squared(\Omega^{2})','Frequency Squared (Hz^{2})');
end
