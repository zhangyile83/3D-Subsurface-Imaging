function A=addnoise(A)
[m,n]=size(A);
for i=1:m
    for j=1:n
        A(i,j)=A(i,j)+A(i,j)*0.02*randn;
    end
end