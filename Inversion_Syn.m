%inversion 1
clear;
%load('Bf_TwoCube1.mat');
load('Bf50_Gen1.mat');
%load('Bf_Ref');
tol = 10^-5;
alpha=10;%0.001;
mk=5*5;
dx=2*mk;
dy=2*mk;

A=Bf50;
A=mypick(A,mk);
[m,n]=size(A);
b=A(:);

disp('Generating depths...');

k=20; 
depth = 300;
thickness = depth/k;
h=zeros(k,1);
for i=1:k
    h(i)=i*depth/k;
end

disp('Generating Multi-layer model...');

ig = zeros(m*n*k,1);
%ig = 2*ones(m*n*k,1);
tevS = GenMultiLayer(m,n,h,dx,dy);

disp('Iteration begin...');

tic;
[u,e] = CG_1RR(b,ig,tevS,tol,alpha,h);
toc
u=u/thickness;
%subplot(2,2,1)
PlotSide(u,k)
%subplot(2,2,2)
%PlotSide1(u,k)
%subplot(2,2,3)
%PlotTop(u,k)
%subplot(2,2,4)
%PlotBottom(u,k)
