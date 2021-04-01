%clc;
A=[1 2 3;-2 -1 0;4 4 4];
n2=norm(A,2),
[v e]=eig(A'*A),
% look for max eig index in e
% in this case, it is (2,2), let
i=2,
n2eig=sqrt(e(i,i)),
diff=n2-n2eig,
x=v(:,i),
norm(x,2),
diff=norm(A*x,2) - n2,
y=[1 0 0].',
diff= norm(A*y,2)- n2 * norm(y,2),