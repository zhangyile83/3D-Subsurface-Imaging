function B=VectorTo3D(u,k,m1)
u1=Matrixizer(u,k);
[m,n]=size(u1);
n1=m/m1;
B=zeros(n1,m1,k);
for i=1:k
    temp=reshape(u1(:,i),n1,m1);
    B(:,:,i)=temp;
end
