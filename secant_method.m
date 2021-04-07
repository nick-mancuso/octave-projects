f = inline('x.^3-13*x.^2+52*x-60');
x0 = 0; x1 = 3;

for i = 2:4,
    x2 = x1 - (f(x1)) * ((x1 - x0) / (f(x1) - f(x0)));
    printf("x%d = %s\n", i, rats(x2, 20));
    printf("f(x%d) = %s\n", i, rats(f(x2), 20));
    x0 = x1;
    x1 = x2;
end;
