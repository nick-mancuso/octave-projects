clear; clc;

A=[1 1; -1 2; 1 1];
z=A(:,1); v=-z; normz=rats(norm(z,2));
if v(1)>0, v(1)=v(1)+norm(z,2); else
    v(1)=v(1)-norm(z,2); end;
P=eye(3)-2*(v*v.')/(v.'*v),
A=P*A,
P1=P;

z=A(2:3,2);
v=-z; normz=rats(norm(z,2));
if v(1)>0, v(1)=v(1)+norm(z,2); else
v(1)=v(1)-norm(z,2); end;
P=eye(2)-2*(v*v.')/(v.'*v);
P2(2:3,2:3)=P; P2(1,1)=1;
P=P2,
A=P*A,

R=A,
Q=P1*P2,
check= Q*R