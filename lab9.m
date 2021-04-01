a=[1 2 3 4;2 3 4 5;3 4 6 9;4 9 11 13],
b=[3 2 2 3].'
[Q R]=qr(a),
c=Q'*b,
% using build-in solver instead of back-sub
x=R\c
% checking
r1=b-a*x