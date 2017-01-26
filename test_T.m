A=[1 15 -2 5;
    3 1 15 -2;
    -1 3 1 15;
    9 -1 3 1];

u = [1 2 3 4]';

b = A*u;

T = [1 3 -1 9];
n = length(T);
% gev = genevs()
ev = genevs(T);

b1 = txt(u,ev');