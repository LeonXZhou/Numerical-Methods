vs=[0.976 0.329 -0.279 -0.408 -0.141 0.144 0.143 0.009 -0.072 -0.047];
[An,Fn] = fit(vs);
da = zeros(size(vs));
df = zeros(size(vs));
for i =  1:10
    vs(i) = vs(i)+0.03;
    [da(i),df(i)] = fit(vs);
    da(i) = (da(i)-An)^2;
    df(i) = (df(i)-Fn)^2;
    vs(i) = vs(i)-0.03;
end
err_a = sqrt(sum(da))
err_f = sqrt(sum(df))