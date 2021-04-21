format long
F=inline('[x(1)^2-2*x(1)-x(2)+(1/2);x(1)^2+4*x(2)^2-4]');
J=inline('[2*x(1)-2 -1;2*x(1) 8*x(2)]','x');
x=[2 0.25]';
for i=1:4,j=J(x),invj=inv(j);f=F(x);
    x=x-invj*f,end
F(x)