clear; clc;
format short;
A=[-2 1 2; -1 2 4; 1 1 5; 5 0 5];

z=A(:,1); v=-z; normz=rats(norm(z,2));
if v(1)>0, v(1)=v(1)+norm(z,2); else
    v(1)=v(1)-norm(z,2); end;
P=eye(4)-2*(v*v')/(v'*v),
A=P*A,
P1=P;

z=A(2:4,2);
v=-z; normz=rats(norm(z,2));
if v(1)>0, v(1)=v(1)+norm(z,2); else
    v(1)=v(1)-norm(z,2); end;
P=eye(3)-2*(v*v')/(v'*v);
P2(2:4,2:4)=P; P2(1,1)=1;
P=P2,
A=P*A,

z=A(3:4,3);
v=-z; normz=rats(norm(z,2));
if v(1)>0, v(1)=v(1)+norm(z,2); else
    v(1)=v(1)-norm(z,2); end;
P=eye(2)-2*(v*v')/(v'*v);
P3(3:4,3:4)=P; P3(1,1)=1; P3(2,2)=1;
P=P3,
A=P*A,

R=A,
Q=P1*P2*P3,
check= Q*R

%function [Q,R] = qrfact(A)
% QRFACT   QR factorization by Householder reflections.
% (demo only--not efficient)
% Input:
%   A      m-by-n matrix
% Output:
%   Q,R    A=QR, Q m-by-m orthogonal, R m-by-n upper triangular

%A=[ -2 1 2 ; -1 2 4 ; 1 1 5; 5 0 5 ];
% A=[1 1 ; -1 2 ; 1 1 ]
% A=A,


% [m,n] = size(A);
% Q = eye(m);
% for k = 1:n
%   z = A(k:m,k);
%   v = -z;
%   normz = rats(norm(z,2));
%   if v(1)>0, v(1)=v(1)+norm(z,2); else
%         v(1)=v(1)-norm(z,2); end;
%   P=eye(m-k +1)-2*(v*v')/(v'*v);
%   %P2(k:m-k,k:n-k)=P; P2(1,1)=1;
%   P2=P,

%   v = [ -sign(z(1))*norm(z) - z(1); -z(2:end) ];
%   v=v,
%   nrmv = norm(v);
%   if nrmv < eps, continue, end       % nothing is done in this iteration
%   v = v / nrmv;                      % removes v'*v in other formulas
%   % Apply the reflection to each relevant column of A and Q
%   for j = 1:n
%     A(k:m,j) = A(k:m,j) - v*( 2*(v'*A(k:m,j)) );
%   end
%   for j = 1:m
%     Q(k:m,j) = Q(k:m,j) - v*( 2*(v'*Q(k:m,j)) );
%   end
%   P1P2=Q.',
%   PA=A,
  
%end

% Q = Q.',
% R = A
% check= Q*R
