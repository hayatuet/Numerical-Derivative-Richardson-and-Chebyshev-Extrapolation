clc; close all; clear;
n = 11; k = 1:n; xi = pi*cos(k*pi/n);
fi = cos(xi);
h = 0.001; xt = -pi:h:pi;
fv = lgrang(xi, fi, xt);
plot(xt, fv, xt, cos(xt))
xlabel('X'); ylabel('f(x), p(x)');
legend('f(x)', 'p(x)')

df = (cos(xt(2:end))-cos(xt(1:end-1)))/h;
dfv = (fv(2:end) - fv(1:end-1))/h;
% difference of derivatives:
mdiffr = mean(abs(df(2:end) - dfv(2:end)));
disp("Mean difference is "+num2str(mdiffr));

figure;
plot(xt(1:end-1), df, xt(1:end-1), dfv)
xlabel("X"); ylabel("f'(x), p'(x)");
legend("f'(x)", "p'(x)")
