function D = GenSR(m,n,nk,choice)

if choice == 1;
m1 = 2*m*nk; n1 = 2*n;
t = zeros(n1,m1);
t(1,1) = 1;
t(2,1) = -1;

elseif choice == 2;
    m1 = 2*nk; n1 = 2*m*n;
    t = zeros(n1,m1);
    t(1,1) = 1;
    t(n+1,1) = -1;
    
elseif choice == 3
    m1 = 1; n1 = 2*m*n*nk;
    t = zeros(n1,m1);
    t(1,1) = 1;
    t(m*n+1,1) = -1;
end

D = fft2(t);
