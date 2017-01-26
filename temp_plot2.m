subplot(1,3,1);
myplot(Top);
title('(a)');

subplot(1,3,2);
myplot(Bottom);
title('(b)');

subplot(1,3,3);
myplot(Side);
title('(c)');
set(gcf,'Units','centimeters','Position',[10 10 40 8.4]);
