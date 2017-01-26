function tevS = GenMultiLayer(m,n,h,dx,dy)
k=length(h);

tevS = zeros(2*n,2*m,k);

for i=1:k
    tevS(:,:,i) = fft2(fcolrow(m,n,h(i),dx,dy));
end