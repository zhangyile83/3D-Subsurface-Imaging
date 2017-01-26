function PlotTop(u,k,m1,depth)

B=VectorTo3D(u,k,m1);

B=B(:,:,depth);
[m,n]=size(B);
for i=1:m
    for j=1:n
        if B(i,j)<0
         % B(i,j)= 0;
        else
         % B(i,j)=floor(B(i,j)*10)/10;
        end
    end
end
myplot(B);