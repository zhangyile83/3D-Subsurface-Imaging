clear;
dx=2;%(1000m times 1000m horizontally)
dy=2;% dx = dy = 2m
%size of the density: 250m times 250m
%start from depth = 76 (80 of the first layer)
dh=4;
TK=200;
M=500; %500 grid in each horizontal direction
N=500;
K=TK/dh;
A=zeros(M,N,K);
depth=zeros(K,1);
Rd=30;%real depth

S=ones(100,100);
for i=1:K/2;
A(201:300, 75:174, i)=S;
end
for i=K/5:3*K/5;
A(201:300, 326:425, i)=S;
end






for i = 1:K
depth(i) = Rd - 0.5*dh + dh*i;
end

Bf = zeros(M*N,1);
for i=1:K
    Ai = A(:,:,i);
    h = depth(i);
    Bi = SingleF(Ai,dx,dy,h);
    Bf = Bf + dh*Bi;
    norm(Bi,inf)
    i
end
Bf=reshape(Bf,M,N);
myplot(Bf);
