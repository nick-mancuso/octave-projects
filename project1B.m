clc;
%a=[2 2 -2; 1 2 2; 3 6 3]; b=[7;1;12];
a=[ -0.79 -15.10 -15.40 -1404.0; -0.75 -14.30 23.00 -1630.0; 0.13 -8.70 113.00 -870.00; 1.00 10.00 100.00 1000.00]
b=[6299.4; 7445.2; 4319.4; -4181.8 ]
n=size(a,1);
a=[a (1:n).'],
for i=1:n-1
  
  
    im=i;
    for j=i+1:n,
      if abs(a(j,i))>abs(a(im,i)),
        im=j; 
      end; 
      end;
        if im~=i, r=a(i,:);a(i,:)=a(im,:);
          a(im,:)=r, 
        end;
   
   
    for j=i+1:n
        a(j,i)=a(j,i)/a(i,i);
        a(j,i+1:n)=a(j,i+1:n)- a(j,i)*a(i,i+1:n),
    end;
end;

 % extract P from a,
 p=zeros(n);
 for i=1:n p(i,a(i,n+1))=1;end;
 p,
  
 a=a(:,1:end-1),
 
% extract L U,
l=tril(a,-1)+eye(n),
u=triu(a),



%forward sub
pb=p*b
y=zeros(n,1); % no need but fast
for k=1:n
    s=pb(k)-l(k,1:k-1)*y(1:k-1);
    y(k)=s/l(k,k);
end
y,

% backsub
x=zeros(n,1);% no need but fast
for k=n:-1:1
    s= y(k)-u(k,k+1:n)*x(k+1:n);
    x(k)=s/u(k,k);
end
x,
