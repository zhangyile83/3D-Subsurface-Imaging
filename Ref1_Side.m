set(gca,'yticklabel',[850:-170:0]);
set(gca,'xticklabel',[500:500:5000]);
% title('Longitudinal section at y=500m');
ylabel('Depth (m)','fontsize',12,'fontweight','b');
xlabel('Northing (m)','fontsize',12,'fontweight','b');
set (gca,'position',[0.1,0.17,0.7,0.7] );

h=colorbar;
set(get(h,'Title'),'string','g/cm^3','fontsize',12,'fontweight','b');

% bar_min = 0;
% bar_max = 1.2;
% caxis([bar_min bar_max ]);