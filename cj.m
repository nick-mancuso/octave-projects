clear; format long
%f=inline('(1+2*t)/(2*y)','t','y');
%sol=inline('sqrt(1+t+t^2)','t');
% this is not done, need to finish this 
f = @(t,y) (1+2*t)/(2*y);
sol = @(t) sqrt(1+t+t^2);
h=0.1;y0=1; t0=0; tend=2;
y=y0;
t=t0;
for t=t0:h:tend-h,
    y=y+h*f(t,y); 
end;

t=t+h;
s1=[h y sol(t) sol(t)-y]', y1=y;
n=5;
h=h/n;
y=y0;

for t=t0:h:tend-h,
    y=y+h*f(t,y);
end;

t=t+h;
s2=[h y sol(t) sol(t)-y]', y2=y;
extr=(n*y2-y1)/(n-1);
ex=[extr sol(t)-extr]',