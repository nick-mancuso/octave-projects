clear
f=inline('(x/pi).^3','x');
a=1;b=pi;
int=integral(f,a,b),
h=(b-a) ;
M=0; for x=a+h:h:b; M=M+f(x-h)/2+f(x)/2; end;
T1=M*h,
h=h/2; M=0; for x=a+h:h:b; M=M+f(x-h)/2+f(x)/2; end;
T2=M*h,
extra=(2^2*T2-T1)/(2^2-1),
f2_err= [T1 int-T1
T2 int-T2
extra int-extra]