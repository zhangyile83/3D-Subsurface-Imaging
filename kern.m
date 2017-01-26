function y = kern(k,j,h,dx,dy)

y = dx*dy*h/((k*dx)^2+(j*dy)^2+h^2)^1.5;