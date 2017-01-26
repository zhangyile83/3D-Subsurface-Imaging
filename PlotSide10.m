function PlotSide10(u,k,position,m)

B=VectorTo3D(u,k,m);

B=B(position,:,:);
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
%B=-B;
myplot(B);
%colormap(gray);