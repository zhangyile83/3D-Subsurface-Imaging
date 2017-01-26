function B=Pick_2D(A)
[M,N,Z]=size(A);
if M==1;
    B=zeros(N,Z);
    for i=1:N
        for j=1:Z
            B(i,j)=A(1,i,j);
        end
    end
else if N==1;
            B=zeros(M,Z);
    for i=1:M
        for j=1:Z
            B(i,j)=A(i,1,j);
        end
    end
    end        
end