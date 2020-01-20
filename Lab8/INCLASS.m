%% INCLASS

%% PART A
fprintf('values(2,4):');
display(values(2,4));

%% PART B

for N = 1:20:100
    for k = 1:10:50
        fprintf('the average for sum when  T = 1, N = %d, k = %d, is %1.10f\n',N,k,sumave(1,N,k));
    end
end

%% PART C

for N = 1:20:100
    for k = 1:10:50
        for m = 1:10:50
        fprintf('the average for sum2 when T = 1, N = %d, k = %d, m = %d, is %1.10f\n',N,k,m,sumave2(1,N,k,m));
        end
    end
end

%% PART D

% a1 = 2*mean(vs*cos(2*pi*f0*t));
% b1 = 2*mean(vs*sin(2*pi*f0*t));
% a2 = 2*mean(vs*cos(2*pi*2*f0*t));
% b2 = 2*mean(vs*sin(2*pi*2*f0*t));