
syms x y
f(x,y)=x.*y/(x.^2+y.^2);
x0=0;
y0=1;
h=0.2;
xg=2;
n=(xg-x0)/h;
X=0:0.2:2;
Y=y0;
for i =1:n
Y(i+1)=Y(i)+h*f(X(i),Y(i));
   
end



