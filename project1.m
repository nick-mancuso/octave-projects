  clc;
  %A=[ 1 3 2;2 1 2;-3 0 3]
  A=[2 2 -2; 1 2 2; 3 6 3]
  n=size(A,1);
  a=[A (1:n).'],
  for i=1:1,
    im=i;
    for j=i+1:n,
      if abs(a(j,i))>abs(a(im,i)),
        im=j; 
      end; 
    end;
      if im~=i, r=a(i,:);a(i,:)=a(im,:);
          a(im,:)=r, 
      end;
   end;
          % extract P from a,
##          p=zeros(n);
##          for i=1:n p(i,a(i,n+1))=1;end;
##          p,
##          s=sum(a(1,1:n)),
          
          % now we have PA
##          pa=p*a,
##          pa=pa(:,1:end-1)
          
          %clc;
          b=[7;1;12];
##          
##n=size(a,1);
##for i=1:n-1
##  for j=i+1:n
##    a(j,i)=a(j,i)/a(i,i);
##    a(j,i+1:n)=a(j,i+1:n)- a(j,i)*a(i,i+1:n),
##  end;
##end;
##              % extract L U,
##              l=tril(a,-1)+eye(n),
##              u=triu(a),
##              %foward sub
##              y=zeros(n,1); % no need but fast
##              for k=1:n
##                s=b(k)-l(k,1:k-1)*y(1:k-1);
##                y(k)=s/l(k,k);
##              end
##              y,
##              % backsub
##              x=zeros(n,1);% no need but fast
##              for k=n:-1:1
##                s= y(k)-u(k,k+1:n)*x(k+1:n);
##                x(k)=s/u(k,k);
##              end
##              x,