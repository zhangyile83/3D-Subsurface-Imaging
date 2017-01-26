%inversion 1
clear;
%load('Bf_TwoCube1.mat');
%load('Bf50_Gen1.mat');
load('Bf_Ref2');
tol = 10^-8;
alpha=10;%0.001;
dx=100;
dy=100;

A=Bf;
A=addnoise(A);
%A=mypick(A,mk);
[m,n]=size(A);
b=A(:);

disp('Generating depths...');

k=10; 
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
% subplot(1,2,1)
PlotSide10(u,k,10,m)

% subplot(1,2,2)
% PlotTop(u,k,m)

