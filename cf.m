format long; clear;
f=inline('exp(pi*x)', 'x');
f2=inline('exp(pi*x)*pi*pi', 'x');
x0=0.4; f2p=f2(x0), o=[];
h=0.5;
a1=( f(x0+ h)-2*f(x0 )+f(x0-h ) )/(h^2);
o=[o; a1];
k=4; h=h/k;
a2=( f(x0+ h)-2*f(x0 )+f(x0-h ) )/(h^2);
o=[o; a2];
ex=(k^2*a2-a1)/(k^2-1); o=[o; ex];
f2_err=[o f2(x0)-o]