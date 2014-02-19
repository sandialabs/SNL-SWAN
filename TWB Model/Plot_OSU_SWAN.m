%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PlotSWAN script for plotting SWAN results
% Created by Jason Magalen, SEI (2011)
% Modified by Kelley Ruehl, SNL (6-18-2012)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fid=fopen([outpath 'Hsig.comp']);
Hsig=flipud(rot90(fscanf(fid,'%f',[length(lons), length(lats)])));
figure(10);hold on;
imagesc(lons,lats,Hsig);
hold on
xlabel('Tank Length (m)','fontsize',11,'fontweight','bold','fontname','Times')
ylabel('Tank Width (m)','fontsize',11,'fontweight','bold','fontname','Times')
shading flat;a=colorbar;caxis([.001 Hs*1.1]);
axis image;ylabel(a,'H_s (m)','fontsize',11,'fontweight','bold','fontname','Times')
saveas(gcf,[outpath 'Hsig'],'bmp')
fclose(fid)

fid3=fopen([outpath 'Tpeak.comp']);
Tpeak=flipud(rot90(fscanf(fid3,'%f',[length(lons), length(lats)])));
figure(11);hold on;
imagesc(lons,lats,Tpeak);
hold on
xlabel('Tank Length (m)','fontsize',11,'fontweight','bold','fontname','Times')
ylabel('Tank Width (m)','fontsize',11,'fontweight','bold','fontname','Times')
shading flat;a=colorbar;caxis([0 max(max(Tpeak))]);
axis image;ylabel(a,'Tp (s)','fontsize',11,'fontweight','bold','fontname','Times')
saveas(gcf,[outpath 'Tpeak'],'bmp')
fclose(fid3)

fid4=fopen([outpath 'WDIRpeak.comp']);
WDIRpeak=flipud(rot90(fscanf(fid3,'%f',[length(lons), length(lats)])));
figure(12);hold on;
imagesc(lons,lats,WDIRpeak);
hold on
xlabel('Tank Length (m)','fontsize',11,'fontweight','bold','fontname','Times')
ylabel('Tank Width (m)','fontsize',11,'fontweight','bold','fontname','Times')
shading flat;a=colorbar;caxis([0 max(max(WDIRpeak))]);
axis image;ylabel(a,'DIR (^{o})','fontsize',11,'fontweight','bold','fontname','Times')
saveas(gcf,[outpath 'WDIRpeak'],'bmp')
fclose(fid3)


