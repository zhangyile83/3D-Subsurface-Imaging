function y = txt(v,gev)
% tx multiplies the Toeplitz matrix T with a vector v.
% v: the vector to be applied;
% gev: the eigenvalues of the circulant matrix
% in which T is embedded, see A.3;
% y: the result of the multiplication.
n = length(v);
y = zeros(2*n,1);
y(1:n) = v;
y = ifft(fft(y).*gev);
y = y(1:n);
if norm(imag(y)) < 1.0e-14 % check if y is real
y = real(y);
end