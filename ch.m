clear
f=inline('(exp(1)*x).^6','x');
a=2;b=exp(1);
int=integral(f,a,b),
h=(b-a)/2;
M=0; for x=a+h:2*h:b;
M=M+f(x-h)+4*f(x)+f(x+h); end;
S1=M*h/3,
h=h/2;
M=0; for x=a+h:2*h:b;
M=M+f(x-h)+4*f(x)+f(x+h); end;
S2=M*h/3,
extra=(2^4*S2-S1)/(2^4-1),
S_err= [S1 int-S1
S2 int-S2
extra int-extra]