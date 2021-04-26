clear; format long;
f=inline('sin(4+4*x)','x');
a=0;b=0.5; int=(cos(4+4*b)-cos(4+4*a))/-4;
m=10;h=(b-a)/m; M=0;
for x=a+h:h:b; M=M+f(x-h)/2+f(x)/2; end;
T1=M*h,
% 4 times!
n=4;
h=h/n; M=0;
for x=a+h:h:b; M=M+f(x-h)/2+f(x)/2; end;
T2=M*h
extra=(n^2*T2-T1)/(n^2-1),
err= int-[T1; T2; extra]