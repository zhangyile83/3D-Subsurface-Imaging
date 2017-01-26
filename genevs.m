function gev = genevs(t)

n = length(t);
t1 = conj(t(n:-1:2));
gev = real(fft([t 0 t1].'));