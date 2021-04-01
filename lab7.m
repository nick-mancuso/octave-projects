%clc;
xc=[1 0 3].'; 
a=[1 1 2; 1 1.1 2.1; 2 2.1 1.2];
b=[7 7 7].'; 
x=a\b,
condA=cond(a,inf)
invA= inv(a)
forErr=norm(x-xc,inf)
backErr=norm(b-a*xc,inf)
beta= forErr/norm(x,inf)
checkLess=beta-condA