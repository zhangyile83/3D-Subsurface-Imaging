function PlotSide10Real(u,k)

B=VectorTo3D(u,k);

B=B(:,50,:);
B=Pick_2D(B);
[m,n]=size(B);
for i=1:m
    for j=1:n
        if B(i,j)<0
            B(i,j)= 0;
        else
        B(i,j)=floor(B(i,j)*10)/10;
        end
    end
end
myplot(B);