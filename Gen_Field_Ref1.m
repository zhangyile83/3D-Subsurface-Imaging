clear;
dx=50;%(1000m times 1000m horizontally)
dy=50;% dx = dy = 2m
%size of the density: 250m times 250m
%start from depth = 76 (80 of the first layer)
dh=50;
TK=350;
M=20; %500 grid in each horizontal direction
N=20;
K=TK/dh;
A=zeros(M,N,K);
depth=zeros(K,1);
Rd=50;%real depth

S=ones(6,5);
for i=1:K;
A(8:13, 13-i:17-i, i)=S;
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
myplot(Bf*2*pi/1000);
