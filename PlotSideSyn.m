function PlotSideSyn(u,position,choice)
% This function is used to display 3D structure A;
l = position;

B = u;
if choice == 1
B=B(l,:,:);
else 
B=B(:,l,:);
end

B=Pick_2D(B);
[m,n]=size(B);
for i=1:m
    for j=1:n
        if B(i,j)<0
         %B(i,j)= 0;
        else
%          B(i,j)=floor(B(i,j)*10)/10;
        end
    end
end
%B=-B;
B=rot90(B) ;
myplot(B);
%colormap(gray);