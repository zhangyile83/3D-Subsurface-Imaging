%inversion 1
clear;
%load('Bf_TwoCube1.mat');
%load('Bf50_Gen1.mat');
load('Bf_Ref2_fine');
tol = 10^-4;
alpha=1;%0.001;
dx=20;
dy=20;

A=Bf;
%A=addnoise(A);
%A=mypick(A,mk);
[m,n]=size(A);
b=A(:);

disp('Generating depths...');

k=50; 
depth = 1000;
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
[u,e,Obj] = CG_1RR(b,ig,tevS,tol,alpha,h);
toc
u=u/thickness;
subplot(1,2,1)
PlotSide10(u,k)
%subplot(2,2,2)
%PlotSide1(u,k)
subplot(1,2,2)
PlotTop(u,k)
%subplot(2,2,4)
%PlotBottom(u,k)
