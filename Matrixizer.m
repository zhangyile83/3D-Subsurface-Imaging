function A=Matrixizer(b,n)
l=length(b);
m=l/n;
A=zeros(m,n);
for i = 1:n
    lt= b(1+(i-1)*m:i*m);
    A(:,i)=lt;
end