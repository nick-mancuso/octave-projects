%clc;
format short;
f=inline('x^3+x^2-1'); % define f
f1=inline('3*x^2+2*x'); % define f'
x=1; s=0.75488; % initial x_i, solution s

oe=abs(x-s); % keep a copy of error
out=[]; % output
for i=1:6 % do 6 iterations
    xnew=x-f(x)/f1(x);
    e=abs(xnew-s);
    out=[out; x f(x) f1(x) e e/oe^2 ];
    printf("x%d = %s\n", i -1, rats(x))
    x=xnew;
    oe=e;
end

printf("x_i     f(x_i)      f'(x_i)     e_{i+1}     e_{i+1}/e_i^2\n")
%rats(out, 12),
out,
format long; out(:,2)