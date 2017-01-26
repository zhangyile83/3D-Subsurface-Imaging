function y = txS2(tevS,b)
%tevS is a m*n*k matrix
[m,n,k] = size(tevS);
m=m/2;
n=n/2;
bT=zeros(m*n,k);

for i=1:k
    tev=tevS(:,:,i);
    bT(:,i)=tx(tev,b);
end

y = bT(:);