set(gca,'xticklabel',[500:500:5000])
set(gca,'yticklabel',[500:500:5000])
% title('Longitudinal section at y=500m');
ylabel('Northing (m)','fontsize',12,'fontweight','b');
xlabel('Easting (m)','fontsize',12,'fontweight','b');
% set (gca,'position',[0.13,0.12,0.7,0.8] );

h=colorbar;
set(get(h,'Title'),'string','mGal','fontsize',12,'fontweight','b');

% bar_min = 0;
% bar_max = 1.2;
% caxis([bar_min bar_max ]);