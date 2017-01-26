function b1 = SingleF(Ex,dx,dy,h)
[M,N] = size(Ex);

T=fcolrow(M,N,h,dx,dy);
T=fft2(T);

b1=tx(T,Ex);