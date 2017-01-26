%inversion 1
clear all;
%load('Bf_TwoCube1.mat');
%load('Bf50_Gen1.mat');
load('real_data_gravity1');
scale=1;
A=mypick(A,scale);
% A=addnoise(A);
tol = 10^-8;
alpha=1;%0.001;

% alpha1 = 200  00;
% alpha2 = 20000;
% alpha3 = 20000;

dx=dx*scale;%10*scale;
dy=dy*scale;%10*scale;

%A=Bf;
%A=addnoise(A);
%A=mypick(A,mk);
[m,n]=size(A);
b=A(:);

disp('Generating depths...');

k=30/scale;%/scale;%/scale; 
depth = 1000;%300;
thickness = depth/k;
h=zeros(k,1);
for i=1:k
    h(i)=i*depth/k;
end

disp('Generating Multi-layer model...');

ig = zeros(m*n*k,1);
%ig = 2*ones(m*n*k,1);
tevS = GenMultiLayer(m,n,h,dx,dy);

% S1 = GenSR(m,n,k,1);
% S2 = GenSR(m,n,k,2);
% S3 = GenSR(m,n,k,3);


disp('Iteration begin...');

tic;
[u,e] = CG_1RR(b,ig,tevS,tol,alpha,h);
%[u,e] = CG_1RRS(b,ig,tevS,S1,S2,S3,tol,alpha,alpha1,alpha2,alpha3,h);
toc
figure(1);
plot(log10(e));
u=u/thickness;
%subplot(1,2,1)
figure(2);
PlotSide1(u,k,m,scale,50,1);
figure(3);
PlotSide1(u,k,m,scale,10,1);
figure(4);
PlotSide1(u,k,m,scale,50,2);
%subplot(2,2,2)
%PlotSide1(u,k)
%subplot(1,2,2)
figure(5);
PlotTop(u,k,m,10)
%subplot(2,2,4)
%PlotBottom(u,k)
