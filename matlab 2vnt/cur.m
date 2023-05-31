% Curve Fitting 

% Case 1 :  using Polynomial function

%Example 1

x=[0.9 1.5 3 4 6 8 9.5];
y=[0.9 1.5 2.5 5.1 4.5 4.9 6.3];

%polyfit is the function
p=polyfit(x,y,2) % 2 is the degree of polynomial

%fprintf('p= %dx^2 + %dx + %d',p(1),p(2),p(3))

%Q=fit(x',y','poly2')

plot(x,y,'-')

hold on

X=x(1):0.1:x(end);
Y=polyval(p,X);  %or Y=Q(X)

plot(X,Y,'k:')

hold off
%% 
% Curve Fitting 

% Case 1 :  using Polynomial function

%Example 1

x=[0.1 0.3 0.6 0.8];
y=[0.72 1.82 2.73 3.47];

%polyfit is the function
p=polyfit(x,y,3) % 3 is the degree of polynomial & x and y should be in
                 %  the row vector

fprintf('p= %dx^2 + %dx + %d',p(1),p(2),p(3))

Q=fit(x',y','poly2') % x and y should be in the column form. and 
                        % in poly2  2 is the degree (poly is the function)

plot(x,y,'pr')

hold on

X=x(1):0.1:x(end);
Y=polyval(p,X);  %or Y=Q(X)

plot(X,Y,'k:')

hold off

polyval(p,0.4)

%% curve fitting with square marker style and green colour dotted line 
% and check that degree 8 polynomial is best fit or not 

x=[0 0.5 1 1.5 2 2.5 3 3.5 4 4.5 5];
y=[6 4.83 3.7 3.15 2.41 1.83 1.49 1.21 0.96 0.73 0.64];

p=polyfit(x,y,8)% degree 8 polynomial

plot(x,y,'sr')
hold on

X=x(1):0.1:x(end);

Y=polyval(p,X);  %or Y=Q(X)

plot(X,Y,'g:')

hold off

polyval(p,0.4)

%% program for exponential with sqaure marker and exp fun curve by dotted 
% line green colour 
% find y=ae^bx


x=[0 0.5 1 1.5 2 2.5 3 3.5 4 4.5 5];
y=[6 4.83 3.7 3.15 2.41 1.83 1.49 1.21 0.96 0.73 0.64];

p=polyfit(x,log(y),1);

a=exp(p(2));
b=p(1);
fprintf('y=%f e^(%f*x)',a,b)
X=x(1):0.1:x(end);
Y=a.*exp(b.*X);

plot(x,y,'.m',X,Y,'-.k')


%% for y=a10^bx

x=[0 0.5 1 1.5 2 2.5 3 3.5 4 4.5 5];
y=[6 4.83 3.7 3.15 2.41 1.83 1.49 1.21 0.96 0.73 0.64];

p=polyfit(x,log10(y),1);

a=10^p(2);
b=p(1);
fprintf('y=%f 10^(%f*x)',a,b)
X=x(1):0.1:x(end);
Y=a.*(power(10,(b.*X)));

plot(x,y,'.m',X,Y,'-.k')


%% for y=aX^(Roll)

x=[0 2 4 6 8 10];
y=[0 5 17 65 105 175];

p=polyfit(x,y,);

roll=40;

fprintf('y=%f 10^(%f*x)',a,b)
X=x(1):0.1:x(end);
Y=a.*(power(10,(b.*X)));

% plot(x,y,'.m',X,Y,'-.k')

%% 
x = [0 2 4 6 8 10];
y = [0 5 17 65 105 175];
% Perform linear regression to find the slope a
a = y(end)/x(end);
% Generate a curve using the function y = aX(roll no)
X = linspace(0, max(x));
Y = a*X;
% Plot the curve and the given points
plot(x, y, 'o', X, Y);
xlabel('X (41)');
ylabel('Y');
title(sprintf('Curve of the function y=%dX^(41)', a));
legend('Given points', 'Curve');


