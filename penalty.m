function b = penalty(b)
n=length(b);
for i=1:n
    if b(i) < 0
        b(i) = 400*b(i);
    else
        b(i) = b(i);
    end
end