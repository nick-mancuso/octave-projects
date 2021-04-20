function project3
format short;

    function bracket(p0, p1, f)
        br=[p0 f(p0) p1 f(p1)];
        res=1;
        ite=0;
        while (res>1e-8) && (ite<50)
            p2=p1-f(p1)/((f(p1)-f(p0))/(p1-p0));
            if(f(p2)*f(p1)>0),p1=p2;else p0=p2;end
            br=[br; p0 f(p0) p1 f(p1)];
            ite=ite+1;
            res=abs(f(p2));
        end;
        x=p2
        table=[' a f(a) b f(b)']
        br
        iterations=ite
    endfunction

    function newton(x, s, f, f_prime)
        oe=abs(x-s); % keep a copy of error
        out=[]; % output
        for i=1:6 % do 6 iterations
            xnew=x-f(x)/f_prime(x);
            e=abs(xnew-s);
            out=[out; x f(x) f_prime(x) e e/oe^2 ];
            %printf("x%d = %s\n", i -1, rats(x))
            x=xnew;
            oe=e;
        end

        printf("x_i     f(x_i)      f'(x_i)     e_{i+1}     e_{i+1}/e_i^2\n")
        %rats(out, 12),
        out,
        format long; out(:,2)
    endfunction

    f=inline('54*x.^6 + 45*x.^5 - 102*x.^4 - 69*x.^3 + 35*x.^2 + 16*x - 4');
    f_prime=inline('324*x.^5 + 225*x.^4 - 408*x.^3 - 207*x.^2 + 70*x + 16');
    % roots:
    % x1= (-2/3) = -0.6666666667
    % x2= 0.5
    % x3= -1.3813
    % x4= 0.20518
    % x5= 1.1761

    x=-1.5:0.01:1.3;
    plot(x, f(x), x, 0*x);

    % do all bracket guesses
    %p0=1;p1=4;
    bracket(-0.666666, -0.6666667, f);
    bracket(0.25, 0.75, f);
    bracket(-1.4, -1.3, f);
    bracket(0.2, 0.3, f);
    bracket(1.1, 1.2, f);


    % do all newton guesses
    x=1; s=0.75488; % initial x_i, solution s
    newton(-0.7,-0.6666666667, f, f_prime);
    newton(0.499, 0.5, f, f_prime);
    newton(-1.4, -1.3813, f, f_prime);
    newton(0.2, 0.20518, f, f_prime);
    newton(1.16, 1.1761, f, f_prime);

endfunction
