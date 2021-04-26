f=inline('(tan((2*x+0.1).^.5)).^.5'); x0=0.1;

h=0.1; d1=(f(x0+h)-f(x0-h))/(2*h),
h=0.05; d2=(f(x0+h)-f(x0-h))/(2*h),
extrapolation=(2^2*d2-d1)/(2^2-1)
% To check
d=inline('((sec((2*x+0.1).^.5)).^2)/ ( (2*(2*x+0.1).^.5) * (tan((2*x+0.1).^.5)).^.5 )');

err=d(x0)-[d1 d2 extrapolation]'