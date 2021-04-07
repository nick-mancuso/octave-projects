clc;
format short;
f=inline('sin(x)-(2*x)/pi'); % define f
f1=inline('cos(x)-(2/pi)'); % define f’
x=pi; s=pi/2; % initial x_i, solution s
oe=abs(x-s); % keep a copy of error
out=[]; % output
while (oe>1e-10) % do 6 iterations
    xnew=x-f(x)/f1(x);
    e=abs(xnew-s);
    out=[out; x f(x) f1(x) e e/oe^2 ];
    x=xnew;
    oe=e;
end

x,

[' x_i f(x_i) f’’(x_i) e_{i+1} e_{i+1}/e_i^2']
out
format long;
errs=out(:,4)