function B=mypick(A,m)
[n1,n2]=size(A);
n11=n1/m;
n22=n2/m;
B=zeros(n11,n22);
for p=1:n11;
    for q=1:n22;
        B(p,q)=A(p*m,q*m);
    end
end