%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Develop SWAN INUT file and run model
% Created by Jason Magalen, SEI (2011)
% Modified by Kelley Ruehl, SNL (6-13-2013)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Create I/O path
outpath = [loc_output 'WECs' num2str(WECnum) '_H' num2str(Hs) '_Tp' num2str(Tp) '_Transm' num2str(transm) '_DSPR' num2str(dd) '\']; %New Folder within loc_output to save each scenario
mkdir(outpath); %creates the directory


if runnum == 1 %only loads and plots the bathy if this is the first loop through the scripts
    bathy=load('10cmLDRgrid.bot');
    bathy(bathy<=0)=NaN;
    se=size(bathy);
end
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % Load the model domin and set x and y (lat and lon) coordinates
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

row = 266; %number of y values for OSU wave tank grid
col = 371; %number of x values for OSU wave tank grid
dx=0.1;dy=dx; %grid spacing, in meters
x1 = 0; %Grid origin X. larger domain extension to the north (Humboldt).
y1 = 0; %Grid origin Y.
x= x1:dx:x1+dx*(col-1); %total x values
y= y1:dy:y1+dy*(row-1); %total y values

mxc=length(x)-1; %overall number of x grid cells. SWAN parameter MXC
myc=length(y)-1; %overall number of y grid cells. SWAN parameter MYC

%Defines COMPUTATIONAL GRID (CGRID) for SWAN
cgrid_lon_dx = 0.1;%10 cm
cgrid_lat_dx =0.1; %10 cm
cgrid_lon_start = x(1); %CGRID origin X
cgrid_lon_end = x(end); %CGRID end X
cgrid_lat_start = y(1); %CGRID origin Y
cgrid_lat_end = y(end); %CGRID end Y
cgridx=cgrid_lon_start:cgrid_lon_dx:cgrid_lon_end; %CGRID range X
cgridy=cgrid_lat_start:cgrid_lat_dx:cgrid_lat_end; %CGRID range Y
cgrid_col = length(cgridx); %number of CGRID cells X
cgrid_row = length(cgridy); %number of CGRID cells Y

lons=cgridx; %range of longitudes. Parameter used for plotting in plotSWAN.m (comp grid)
lats=cgridy; %range of latitudes. Parameter used for plotting in plotSWAN.m(comp grid)

%plot bathy that is to be used in SWAN model
if runnum == 1 %Only plot bathy if this is the first loop through the script
    figure(1);
    clf;
    pcolor(x,y,(bathy));
    shading flat;
    hold on;
    contour(x,y,bathy,[0.25 0.25],'.-','color', [0 .05 .1], 'linewidth',1);
    contour(x,y,bathy,[0.5 0.5],'.-','color', [0 .05 .1], 'linewidth',1);
    contour(x,y,bathy,[0.75 0.75],'.-','color', [0 .05 .1], 'linewidth',1);
    contour(x,y,bathy,[1 1],'k','linewidth',2);
    contour(x,y,bathy,[1.25 1.25],'.-','color', [0 .05 .1], 'linewidth',1);
    axis image
    caxis([0 1.5]);
    ca = colorbar;
    ylabel(ca,'Depth (m)','fontname','Times','fontweight','bold','fontsize',[10]);
    colormap(flipud(colormap));
    lonvals = get(gca,'xtick');
    %set(gca,'xticklabel',[lonvals-360]);
    xlabel('Cross-Shore Dist (m)','fontname','Times','fontweight','bold','fontsize',[11]);
    ylabel('Along-Shore Dist (m)','fontname','Times','fontweight','bold','fontsize',[11]);
    title('Model Domain','fontname','Times','fontweight','bold','fontsize',[11]);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Locations of WEC devices
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
WEClocx = [7.88, 10.39, 10.44, 8.02, 10.39]; %X-locations of WEC devices for OSU Wave Tank
WEClocy = [-0.46, -1.72, 3.10, 1.98, 0.70]+13.25; %Y-locations of WEC devices for OSU Wave Tank: add 13.25 meters to y values so they are placed in the proper central location on the CGRID.

if WECnum == 1 %define the WEC device locations based on the selected configuration. These locations will define the "obstacles" used in SWAN
    WECx = WEClocx(1);
    WECy = WEClocy(1);
    
elseif WECnum == 3
    WECx = WEClocx(1:3);
    WECy = WEClocy(1:3);
    
elseif WECnum == 5
    WECx = WEClocx;
    WECy = WEClocy;
    
else
    disp('Wrong number of WEC devices!');
    pause
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Locations of wave gauges in OSU tank for SWAN extraction
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
modoutpts = load('WaveGaugeLocationsADJ.csv'); %load file of lats/lons/depths/point IDS. ADJ for 13.25 m offset for central location in tank
modoutx = modoutpts(:,1); %x-location of wave gauges
modouty = modoutpts(:,2)+13.25; %y-location of wave gauges

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Additional plotting
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if runnum == 1 %only plot wave gauge locations if first loop through the script
    p = plot(modoutx,modouty,'ko','markersize',[5]);
    leg = legend([p],'Wave Gage Locations','location','northoutside');
    set(leg,'orientation','horizontal','fontname','times','fontsize',[8])
    saveas(gcf,'ModelDomain','pdf');
    saveas(gcf,'ModelDomain','png');
end

%% Added by Kelley on 6/19/12 - note: this won't work if the # of cases are changed

if runnum == 1 %only plot wave gauge locations and WEC device locations if running first 1WEC case
    p1 = plot(WECx,WECy,'ks','markersize',[8],'linewidth',[2],'markerfacecolor','k');
    p2 = plot(modoutx,modouty,'ko','markersize',[5]);
    leg = legend([p1 p2], 'WEC Locations','Wave Gage Locations','location','northoutside');
    set(leg,'orientation','horizontal','fontname','times','fontsize',[8])
    saveas(gcf,'ModelDomain_WEC1','pdf');
    saveas(gcf,'ModelDomain_WEC1','png');
end

if runnum == 2; %232 %only plot wave gauge locations and WEC device locations if running first 3WEC case
    p1 = plot(WECx,WECy,'ks','markersize',[8],'linewidth',[2],'markerfacecolor','k');
    p2 = plot(modoutx,modouty,'ko','markersize',[5]);
    leg = legend([p1 p2], 'WEC Locations','Wave Gage Locations','location','northoutside');
    set(leg,'orientation','horizontal','fontname','times','fontsize',[8])
    saveas(gcf,'ModelDomain_WEC3','pdf');
    saveas(gcf,'ModelDomain_WEC3','png');
end

if WECnum == 3;  %463 %only plot wave gauge locations and WEC device locations if running first 5WEC case
    p1 = plot(WECx,WECy,'ks','markersize',[8],'linewidth',[2],'markerfacecolor','k');
    p2 = plot(modoutx,modouty,'ko','markersize',[5]);
    leg = legend([p1 p2], 'WEC Locations','Wave Gage Locations','location','northoutside');
    set(leg,'orientation','horizontal','fontname','times','fontsize',[8])
    saveas(gcf,'ModelDomain_WEC5','pdf');
    saveas(gcf,'ModelDomain_WEC5','png');
end

%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%   CREATE SWANINPUT FILE  %%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fid=fopen([outpath 'HB_INPUT_H' num2str(Hs) '_Tp' num2str(Tp) '_MWD' num2str(mwd) '_Transm' num2str(transm) '_Reflect' num2str(reflect) '_DSPR' num2str(dd) ],'w');

fprintf(fid,'PROJECT  ''OSU Wave Tank '' ''TEST''\n'); %Project Name
fprintf(fid, '''SWAN MODEL for SANDIA NATIONAL LABS''\n\n'); %Additional Project description(s)
fprintf(fid,'SET CARTESIAN\n'); %Project Convention [Cartesian, Nautical], north up and no water level addition

%fprintf(fid,'MODE NONSTAT TWOD\n'); %Station ary mode, two dimensional (used so that the paramter "time" is output in each file
fprintf(fid,'MODE STAT TWOD\n'); %Station ary mode, two dimensional
fprintf(fid,'COORD CARTESIAN\n\n'); %Coordinate System [Cartesian, Spherical]

fprintf(fid,'CGRID REG %0.6f %0.6f 0.0 %0.18f %0.18f %d %d',[cgridx(1) cgridy(1) (cgridx(end)-cgridx(1)) (cgridy(end)-cgridy(1)) length(cgridx)-1 length(cgridy)-1]);
%Defines grid origin (lat/lon), grid angle, Grid spacing (delta lat/lon) and total number of grid cells
fprintf(fid,' CIRCLE %d %f %d %d\n',[mdc flow fhigh msc]); %Defines frequency and direction spectra
fprintf(fid,'INPGRID BOTTOM REG %0.6f %0.6f 0.0 %d %d %0.14f %0.14f\n',[x(1) y(1) mxc myc dx dy]); %Defines input grid for the BATHY
fprintf(fid,'READINP BOTTOM %0.4f ''10cmLDRgrid.bot'' %d %d FREE\n\n',[fac idla nhedf]); %Defines the filename of the input grid and read parameters

fprintf(fid,['BOUND SHAPESPEC JONSWAP ' num2str(gamma) ' PEAK DSPR POWER\n']);
fprintf(fid,['BOUNDSPEC SIDE N CON PAR ' num2str(Hs) ' ' num2str(Tp) ' ' num2str(mwd) ' ' num2str(dd) '\n']); % from north
fprintf(fid,['BOUNDSPEC SIDE W CON PAR ' num2str(Hs) ' ' num2str(Tp) ' ' num2str(mwd) ' ' num2str(dd) '\n']); % from west
fprintf(fid,['BOUNDSPEC SIDE S CON PAR ' num2str(Hs) ' ' num2str(Tp) ' ' num2str(mwd) ' ' num2str(dd) '\n\n']); % from south

fprintf(fid,'GEN1\n'); %activates wind input and whitecapping
fprintf(fid,'BREAKING\n'); %Wave Breaking
fprintf(fid,'FRICTION\n'); %Defines Friction Parameters - default for now
fprintf(fid,'TRIAD\n'); %Triads turned on
fprintf(fid,'OFF QUADRUPL\n'); % Quads are OFF
%fprintf(fid,'PROP BSBT\n'); %BSBT propagation defined - When commented uses the default SORDUP scheme
%fprintf(fid,'NUM ACCUR STAT 10 0\n\n'); %BSBT propagation defined

for wloc = 1:length(WECx)
    fprintf(fid,'OBSTACLE TRANS %.2f REFL %.2f LINE %12.9f %9.6f %12.9f %9.6f\n', [transm, reflect, WECx(wloc)-0.055, WECy(wloc), WECx(wloc)+0.045, WECy(wloc)]); %Defines several obstacles, locations and transmission parameters
    fprintf(fid,'\n');
end

for ii=1:length(modoutx)
    fprintf(fid,'POINTS ''OutPt%d'' %0.6f %0.6f\n',[ii modoutx(ii) modouty(ii)]);
end
fprintf(fid,'\n');

fprintf(fid,'$************ OUTPUT REQUESTS *************************$\n'); %Output parameters below
fprintf(fid,'\n');

fprintf(fid,'BLOCK ''COMPGRID'' NOHEAD ''WDepth.comp'' LAY 3 DEP\n'); %Water Depth
%fprintf(fid,'BLOCK ''COMPGRID'' NOHEAD ''BotLev.comp'' LAY 3 BOTLEV\n'); %Bottom Level
fprintf(fid,'BLOCK ''COMPGRID'' NOHEAD ''Hsig.comp'' LAY 3 HSIGN\n'); %Hs
%fprintf(fid,'BLOCK ''COMPGRID'' NOHEAD ''Hswell.comp'' LAY 3 HSWELL\n'); %wave height of swell waves
fprintf(fid,'BLOCK ''COMPGRID'' NOHEAD ''WDIRpeak.comp'' LAY 3 PDIR\n'); %Peak Wave Dir
%fprintf(fid,'BLOCK ''COMPGRID'' NOHEAD ''WDIRmean.comp'' LAY 3 DIR\n'); %Mean Wave Dir
fprintf(fid,'BLOCK ''COMPGRID'' NOHEAD ''Tpeak.comp'' LAY 3 RTP\n'); %Peak Tp
%fprintf(fid,'BLOCK ''COMPGRID'' NOHEAD ''Tmean.comp'' LAY 3 PER\n'); %Mean Tp
%fprintf(fid,'BLOCK ''COMPGRID'' NOHEAD ''Ubot.comp'' LAY 3 UBOT\n'); %Near-bottom orbital velocity
%fprintf(fid,'BLOCK ''COMPGRID'' NOHEAD ''Urms.comp'' LAY 3 URMS\n'); %RMS orbital velocity
%fprintf(fid,'BLOCK ''COMPGRID'' NOHEAD ''WLength.comp'' LAY 3 WLEN\n'); %Mean wave length
%fprintf(fid,'BLOCK ''COMPGRID'' NOHEAD ''WDIRdspr.comp'' LAY 3 DSPR\n\n'); %Directional wave spreading

for ii=1:length(modoutx)
    fprintf(fid,'TABLE ''OutPt%d'' HEADER ''OutPt%d.TXT'' TIME XP YP DEPTH BOTLEV HSIGN HSWELL PDIR DIR RTP PER UBOT URMS WLEN DSPR\n',[ii ii]);
end
fprintf(fid,'\n');

fprintf(fid,'COMPUTE\n');

fprintf(fid,'STOP\n'); %Tells SWAN to stop
fclose(fid); %Closes INPUT file

copyfile([outpath 'HB_INPUT_H' num2str(Hs) '_Tp' num2str(Tp) '_MWD' num2str(mwd) '_Transm' num2str(transm) '_Reflect' num2str(reflect) '_DSPR' num2str(dd)],[loc_swan 'INPUT' ]); %copies INPUT file to the directory where swan.exe exists

%Run SWAN
cd(loc_swan);   %go to path of SNL-SWAN.exe and input files
!snl_swan.exe
cd(init_path);  %go back to inital path

try
    copyfile([loc_swan '*.TXT'],[outpath]); %copies output files back to the outpath directory
end
try
    copyfile([loc_swan '*.comp'],[outpath]); %copies output files back to the outpath directory
end

try
    for ii=1:length(modoutx)
        delete([loc_swan 'OutPt' num2str(ii) '.TXT']); %deletes remaining .txt files from swan directory (if any exist)
    end
end
try
    delete([loc_swan '*.comp']); %deletes remaining .comp files from swan directory (if any exist)
end

