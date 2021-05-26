f = inline('x.^3-13*x.^2+52*x-60');
p0 = 0; p1 = 3;
fp = [p0 p1];
root=fzero(f, x0),

for i = 1:4,
    p2 = p1 - f(p1) / ((f(p1) - f(p0)) / (p1 - p0));

    if (f(p2) * f(p1) > 0), p1 = p2;
    else p0 = p2;
    end

    fp = [fp p2];
    end;
    #FPM = [rats(fp', 30) rats(f(fp'), 30)]
    FPM = [fp' f(fp')]

