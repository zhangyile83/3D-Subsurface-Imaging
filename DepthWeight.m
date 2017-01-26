function wb = DepthWeight(b,h)
k = length(h);
b = Matrixizer(b,k);
z0=0;
for i=1:k
    w = (h(i)+z0)^-1.4;%(-1.4); %0.5
    b(:,i) = w*b(:,i);
end
wb = b(:);