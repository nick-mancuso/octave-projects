clc;
%A=[ 1 3 2;2 1 2;-3 0 3]
A=[1.2 2.3 3.4 4.5;2 3 4 5;-4.56 5.67 -6.78 7.89;3.2 2.1 1.0 0.9]
n=size(A,1);
a=[A (1:n).'],
for i=1:1,
  im=i;
  for j=i+1:n,
    if abs(a(j,i))>abs(a(im,i)),
      im=j; end; end;
      if im~=i, r=a(i,:);a(i,:)=a(im,:);
        a(im,:)=r, end;
        end;
        % extract P from a,
        p=zeros(n);
        for i=1:n p(i,a(i,n+1))=1;end;
        p,
        s=sum(a(1,1:n)),