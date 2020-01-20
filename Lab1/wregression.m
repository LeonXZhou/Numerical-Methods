function [A,B,dA,dB] = wregression(x,y,dy)

w = (1./(dy.^2));
D = S(w)*S(w.*(x.^2))-(S(w.*x))^2;

A=(S(w.*(x.^2))*S(w.*y)-S(w.*x)*S(w.*x.*y))/D;
B= (S(w)*S(w.*x.*y)-S(w.*x)*S(w.*y))/D;
dA= sqrt(S(w.*(x.^2))/D);
dB= sqrt(S(w)/D);

end