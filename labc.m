clear;
f=inline('cos(x) + x/pi'); p0=3;p1=4;
sc=[p0 f(p0)];
sc=[sc; p1 f(p1)];
for i=1:6,
    p2=p1-f(p1)/((f(p1)-f(p0))/(p1-p0));
    p0=p1;p1=p2;
    sc=[sc; p2 f(p2)];
end,

[ ' x_i ', ' f(x_i) ' ]
sc
x=p2