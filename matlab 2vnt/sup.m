x = linspace(-2,2);
y1 = 3 - x;
y2 = exp(x-1);

plot(x, y1, 'r', x, y2, 'k')
xlabel('x')
ylabel('y')
title('Graph of y1 = 3 - x and y2 = exp(x) - 1')
legend('y1 = 3 - x', 'y2 = exp(x-1)')
grid on


root_in = find(y1 >= y2, 1, 'first');
xroot = x(root_in);
yroot = y1(root_in);

hold on
plot(xroot, yroot, 'ko')
hold off

fprintf('Minimum root: x = %.2f, y = %.2f\n', xroot, yroot);
