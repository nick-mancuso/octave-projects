clear; clc,
f=@(t,y) t.^2+2*y
a=0; b=2; y0=5;
% try at most 20 times
h=b-a; y=0;
for iter=1:20
yold=y;
y=y0;
for t=a:h:b-h,
y=y+h*f(t,y);
end;
if abs(y-yold) < 1e-2,
['accuracy is reached'],
break; end;
itr_h_y=[iter h y],
h=h/2;
end;
y_2=2*y-yold