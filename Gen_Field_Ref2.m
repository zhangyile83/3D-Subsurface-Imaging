clear;
dx=100;%(2000m times 2000m horizontally)
dy=100;% dx = dy = 2m
%size of the density: 250m times 250m
%start from depth = 76 (80 of the first layer)
dh=100;
TK=900;
M=20; %500 grid in each horizontal direction
N=20;
K=TK/dh;
A=zeros(M,N,K);
depth=zeros(K,1);
Rd=100;%real depth

S1=0.8*ones(5,3);
S2=ones(10,2);

for i=1:3;
A(9:13, 5+i:7+i, i)=S1;
end

for i=1:9;
A(6:15, 16-i:17-i, i)=S2;
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
