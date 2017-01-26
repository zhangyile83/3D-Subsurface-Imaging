subplot(1,3,1);
myplot(Bf100);
title('(a)');
subplot(1,3,2);
myplot(Bf16);
title('(b)');
subplot(1,3,3);
myplot(Bf16-Bf100);
title('(c)');
set(gcf,'Units','centimeters','Position',[10 10 40 8.4])