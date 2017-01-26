function y = txS1(tevS,bS)
%tevS is a m*n*k matrix
[m,n,k] = size(tevS);
m=m/2;
n=n/2;
bT = zeros(m*n,k);
y=zeros(m*n,1);
bS = Matrixizer(bS,k);

for i=1:k
    tev=tevS(:,:,i);
    b=bS(:,i);
    bT(:,i)=tx(tev,b);
end
for i=1:k
    y=y+bT(:,i);
end