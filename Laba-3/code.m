x = -10:0.1:10;
y1 = x.*sin(x);
y2 = sin(x)+x.^2;
y3 = sin(x)+x;
plot(x, y1, '-m', x, y2, '-c', x, y3, '-b');
legend('y = sin(x)*x', 'y = sin(x)+x^2', 'y = sin(x)+x');
axis square;
grid on;
ylim([-10, 10]);
figure;
x2 = -10:0.01:0;
x3 = 0:0.01:10;
x0 = 0;
for i = 1:11
    x0(i)= -11+i;
end
for i = 1:11
    x1(i) = -1+i;
end
y0 = (1+x0)./((1+x0.^2).^1/3);
y2 = (1+x2)./((1+x2.^2).^1/3);
y1 = -x1+2.*exp(-2.*x1);
y3 = -x3+2.*exp(-2.*x3);
plot(x2, y2, '-c', x3, y3, '-c', x0, y0, '-rs', x1, y1, '-rs');
legend('Вектор Matlab','','Обычный массив','');
axis square;
grid on;
ylim([-1.0, 4.0]);
xlim([-2.5, 2.5]);
xlabel('X ось');
ylabel('Y ось');
