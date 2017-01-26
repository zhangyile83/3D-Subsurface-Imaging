clear;
dx=20;%(1000m times 1000m horizontally)
dy=20;% dx = dy = 2m
%size of the density: 250m times 250m
%start from depth = 76 (80 of the first layer)
dh=100;
TK=900;
M=100; %500 grid in each horizontal direction
N=100;
K=TK/dh;
A=zeros(M,N,K);
depth=zeros(K,1);
Rd=300;%real depth 
       % 300 to generate the field temp_test

S1=0.8*ones(25,15);
S2=ones(50,10);

for i=1:3;
A(41:65, 21+5*i:35+5*i, i)=S1;
end

for i=1:9;
A(26:75, 76-5*i:85-5*i, i)=S2;
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
figure(1)
myplot(Bf*2*pi/1000);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
set(gca,'xticklabel',[200:200:2000])
set(gca,'yticklabel',[200:200:2000])
% title('Longitudinal section at y=500m');
ylabel('Northing (m)','fontsize',12,'fontweight','b');
xlabel('Easting (m)','fontsize',12,'fontweight','b');
% set (gca,'position',[0.13,0.12,0.7,0.8] );

h=colorbar;
set(get(h,'Title'),'string','mGal','fontsize',12,'fontweight','b');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(2)
PlotSideSyn(A,50,1)