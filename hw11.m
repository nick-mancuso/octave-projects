
% g=inline('4/5*x+1/x','x');
% x=1/2;
% for i = 0:20
%    x=g(x),
% end
% g=inline('5/(2*x)+x/2','x');
% printf("Next!\n");
% x=1;
% for i = 0:20
%    x=g(x),
% end
% g=inline('(5+x)/(1+x)','x');
% printf("Next!\n");
% x=1;
% for i = 0:20
%    x=g(x),
% end
 g=inline('cos(x)','x');
% printf("Next!\n");
 x=1;
 for i = 0:20
    x=g(x),
 end
