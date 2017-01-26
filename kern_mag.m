function y = kern_mag(k,j,h,dx,dy)

I = 75*pi/180;
D = 25*pi/180;
% 
% I = 74*pi/180;
% D = -10*pi/180;

A=0;

lx = cos(I)*cos(D-A);
ly = cos(I)*sin(D-A);
lz = sin(I);

y = dx*dy*(lz/((k*dx)^2+(j*dy)^2+h^2)^1.5)-...
    3*(lx*(k*dx)+ly*(j*dy)+lz*h)*h/(((k*dx)^2+(j*dy)^2+h^2)^2.5);