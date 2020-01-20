%Lab 1 Task 2 demonstration
f1=[199,491,661,801,918,1021,1113,1201]; % frequency [Hz];
V1=[2.89,3.81,4.45,4.88,5.19,5.44,5.63,5.80]; % inductor RMS voltage [V]
I1=[93.54,86.36,82.53,78.10,74.42,71.22,68.47,65.92]; % inductor RMS current [A]
dV1=V1*0.005+0.02; % Uncertainty in the voltage measurements [V]
I1 = I1./1000;
dI1=I1*0.0075+0.0002;  % Uncertainty in the current measurements [A]

w1 = f1.*2*pi;

f2=[208,221,235,255,280,310,351,420,560,1200]; % frequency [Hz]
V2=[7.5,7.48,7.47,7.7,7.75,7.83,7.78,7.82,7.89,7.76]; % Capacitor RMS Voltage [V]
I2=[4.65,4.92,5.24,5.55,6.23,6.89,7.79,9.3,12.61,26.2]*10^-3; % RMS Current [A]
dV2=V2*0.005+0.02; % Experimental Uncertainty in Voltage Measurements [V]
dI2=I2*0.0075+0.0002; % Uncertainty in Current [A]

w2 = f2.*2*pi;

[Resistance1, Inductance]= inductorAnalyser(w1,V1,I1,dV1,dI1);
[Resistance2, Capacitance]= capacitorAnalyser(w2,V2,I2,dV2,dI2);