%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Runs the SWAN Slanted Current Test Case with the compiled source code
% and compares the results between Compiled SWAN, Original SWAN & Analytical
%
% NOTE: BE VERY CAREFUL WITH PATH DEFINITIONS
% NOTE: To run test case, uncomment !line
% NOTE: To run test case, rename input file (a11refr.swn) INPUT
%
% Created by Kelley Ruehl, SNL (12-12-2012)
% Modified by Kelley Ruehl, SNL (2-8-2013)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

close all
clear all
clc

%% Set Program Path locations

% Path Definitions ***MAKE SURE THESE ARE UPDATED
init_path = 'G:\SWAN\'; % base path
loc_swan = [init_path 'Visual Studio Compiles\SNL_SWAN_v3\SNL_SWAN_v3\Debug\']; % location of source code and newly compiled SWAN.exe
loc_output = [init_path 'SWAN Test Cases\SNL_SWAN_v3 - 2-8-2013\slancur\']; % location to of SWAN test case I/O files
diff_path = [loc_output 'from SWAN\']; % location of Original SWAN & Analytical test case solutions
fig_path = [loc_output 'figures\']; % location of figure folder

% Move to path of newly compiled source code
cd(loc_swan); % move to the folder where Newly Compiled SWAN.exe is located

% Copy compiled exectuable files to the test case folder
copyfile('snl_swan_v3.exe',loc_output)

%% Run the Compiled SWAN executable with the test case

% Move to SWAN test case folder and Run SWAN
cd(loc_output); % Move to SWAN Input/Output test case files

% This only runs model if input file named 'INPUT'
!snl_swan_v3.exe 

%% Load Slant Current Data

% Load Newly Compiled SWAN Solution (.tab)
sol = load('a33cur01.tab');    %DIST HS TM01 DIR DEP RTP 
L = length(sol);          % The last data point is bad (BC= bad data points)
DistC = sol(1:L,1);         % Dist = distance [m]
HsC = sol(1:L,2);           % Hsig = significant wave height [m]
TC = sol(1:L,3);            % Tm01 = spectral peak period [ss]
DirC = sol(1:L,4);          % Dir = direction [deg]
hC = sol(1:L,5);            % Depth = depth [m]
RTpeakC = sol(1:L,6);       % RTpeak = ?? [s]

% Load Newly Compiled SWAN Solution @Locations (.tbl)
sol1 = load('a33cur01.tbl');    % Hsig RTpeak Tm01 Tm02 FSpr      
L = length(sol1);          % The last data point is bad (BC= bad data points)
HsC1 = sol1(1:L,1);          % Hsig = significant wave height [m]
RTPeak1 = sol1(1:L,2);       % RTpeak = ?? [s]
TC1 = sol1(1:L,3);           % Tm01 = spectral peak period [ss]
TC2 = sol1(1:L,4);           % Tm02 = spectral peak period [ss]
FSpr1 = sol1(1:L,5);         % FSpr = ?? [-]

% Move to Original SWAN & Analytical test case folder
cd(diff_path); % move to Original SWAN & Analytical path

% Load (Original) SWAN Solution (.tab)
Ssol = load('a33cur01.tab');    %Dist, Hsig, Tm01, Dir, Depth, RTpeak  
L = length(Ssol);         % The last data point is bad (BC= bad data points)
DistS = Ssol(1:L,1);        % Dist = distance [m]
HsS = Ssol(1:L,2);          % Hsig = significant wave height [m]
TS = Ssol(1:L,3);           % Tm01 = spectral peak period [ss]
DirS = Ssol(1:L,4);         % Dir = direction [deg]
hS = Ssol(1:L,5);           % Depth = depth [m]
RTpeakS = Ssol(1:L,6);      % RTpeak = ?? [s]

% Load (Original) SWAN Solution @Locations (.tbl)
sol2 = load('a33cur01.tbl');    % Hsig RTpeak Tm01 Tm02 FSpr      
L = length(sol2);          % The last data point is bad (BC= bad data points)
HsC2 = sol2(1:L,1);          % Hsig = significant wave height [m]
RTPeak2 = sol2(1:L,2);       % RTpeak = ?? [s]
TC3 = sol2(1:L,3);           % Tm01 = spectral peak period [ss]
TC4 = sol2(1:L,4);           % Tm02 = spectral peak period [ss]
FSpr2 = sol2(1:L,5);         % FSpr = ?? [-]

% Load Analytical Solution
slan = importdata('a33curs.ana');   % YP, Hs, Dir
L = length(slan.data);    % The last data point is bad (BC= bad data points
DistA = slan.data(1:L,1);   % Yp = Distance [m]
HsA = slan.data(1:L,2);     % Hs = significant wave height [m]
DirA = slan.data(1:L,3);    % Dir = direction [deg]

cd(loc_output); % Move to SWAN Input/Output test case files

%% Plot Comparison of Analytical/Compiled/Original SWAN Slanted Current Test Data (.tab)

scrsz = get(0,'ScreenSize');
figure('Position',[scrsz(4)*0.5 scrsz(3)*0.025 scrsz(3)*0.4 scrsz(4)*0.86]); %: [left, bottom, width, height]:
subplot(2,1,1)
plot(DistA,HsA,'k-')
hold on
plot(DistC,HsC,'b:.')
hold on
plot(DistS,HsS,'r:.')
xlabel('Distance [m]')
ylabel('Hs [m]')
legend('Analytical','Compiled','SWAN','Location','SE')
title('Hs Comparison Slanting Current Test Data (.tab)')

subplot(2,1,2)
plot(DistA,DirA,'k-')
hold on
plot(DistC,DirC,'b:.')
hold on
plot(DistS,DirS,'r:.')
xlabel('Distance [m]')
ylabel('Direction [\circ]')
legend('Analytical','Compiled','SWAN','Location','NE')
title('Direction Comparison Slanting Current Test Data (.tab)')

saveas(gcf,[fig_path 'fig1'],'fig') %Save Figure

%% Plot Comparison of Compiled/Original SWAN Slanted Current Test Data @Locations (.tbl)

scrsz = get(0,'ScreenSize');
figure('Position',[scrsz(4)*0.5 scrsz(3)*0.025 scrsz(3)*0.4 scrsz(4)*0.86]); %: [left, bottom, width, height]:
subplot(5,1,1)
plot(HsC1,'b:.')
hold on
plot(HsC2,'r:.')
ylabel('Hs [m]')
legend('Compiled','SWAN','Location','NE')
title('Comparison Compiled/Original Slanting Current Test Data @Locations (.tbl)')
max1 = max(HsC1-HsC2);
text(12,1.025,['max diff. = ',num2str(max1,'%f'),' [m]'],'HorizontalAlignment','center');

subplot(5,1,2)
plot(RTPeak1,'b:.')
hold on
plot(RTPeak2,'r:.')
ylabel('RTPeak [s]')
max1 = max(RTPeak1-RTPeak2);
text(12,10.2,['max diff. = ',num2str(max1,'%f'),' [s]'],'HorizontalAlignment','center');

subplot(5,1,3)
plot(TC1,'b:.')
hold on
plot(TC3,'r:.')
ylabel('Tm01 [s]')
max1 = max(TC1-TC3);
text(12,9.975,['max diff. = ',num2str(max1,'%f'),' [s]'],'HorizontalAlignment','center');

subplot(5,1,4)
plot(TC2,'b:.')
hold on
plot(TC4,'r:.')
ylabel('Tm02 [s]')
max1 = max(TC2-TC4);
text(12,9.96,['max diff. = ',num2str(max1,'%f'),' [s]'],'HorizontalAlignment','center');

subplot(5,1,5)
plot(FSpr1,'b:.')
hold on
plot(FSpr2,'r:.')
ylabel('FSpr [-]')
xlabel('iteration')
max1 = max(FSpr1-FSpr2);
text(12,0.83,['max diff. = ',num2str(max1,'%f'),' [-]'],'HorizontalAlignment','center');

saveas(gcf,[fig_path 'fig2'],'fig') %Save Figure

%% Plot the Compiled/Original SWAN Slanting Current Test Data (.tab)

scrsz = get(0,'ScreenSize');
figure('Position',[scrsz(4)*0.5 scrsz(3)*0.025 scrsz(3)*0.4 scrsz(4)*0.86]); %: [left, bottom, width, height]:
subplot(5,1,1)
plot(HsC,'b:.')
hold on
plot(HsS,'r:.')
ylabel('Hs [m]')
title('Comparison Compiled/Original Slanting Current Test Data (.tab)')
legend('Compiled','SWAN','Location','NE')
Hs_max = max(HsC-HsS);
text(100,1.02,['max diff = ',num2str(Hs_max,'%f'),' [m]'],'HorizontalAlignment','center');

subplot(5,1,2)
plot(DirC,'b:.')
hold on
plot(DirS,'r:.')
ylabel('Direction [\circ]')
Dir_max = max(DirC-DirS);
text(100,119,['max diff = ',num2str(Dir_max,'%f'),' [\circ]'],'HorizontalAlignment','center');

subplot(5,1,3)
plot(TC,'b:.')
hold on
plot(TS,'r:.')
ylabel('Period [s]')
T_max = max(TC-TS);
text(100,9.98,['max diff = ',num2str(T_max,'%f'),' [s]'],'HorizontalAlignment','center');

subplot(5,1,4)
plot(DistC,'b:.')
hold on
plot(DistS,'r:.')
ylabel('Distance [m]')
Dist_max = max(DistC-DistS);
text(100,3000,['max diff = ',num2str(Dist_max,'%f'),' [m]'],'HorizontalAlignment','center');

subplot(5,1,5)
plot(RTpeakC,'b:.')
hold on
plot(RTpeakS,'r:.')
xlabel('iteration')
ylabel('RTpeak [s]')
RTpeak_max = max(RTpeakC-RTpeakS);
text(100,10.2,['max diff = ',num2str(RTpeak_max,'%f'),' [s]'],'HorizontalAlignment','center');

saveas(gcf,[fig_path 'fig3'],'fig') %Save Figure



%% Extra Plots

%% Other Figures

% figure
% plot(HsA,DirA,'k-')
% hold on
% plot(HsC,DirC,'b:.')
% hold on
% plot(HsS,DirS,'r:.')
% xlabel('Hs [m]')
% ylabel('Direction [\circ]')
% legend('Analytical','Compiled','SWAN','Location','NE')
% title('Direction Comparison Slanting Current Test Data')

%% Plot Residuals for Compiled/Original SWAN Slanting Current Test Data

% scrsz = get(0,'ScreenSize');
% figure('Position',[scrsz(4)*0.5 scrsz(3)*0.025 scrsz(3)*0.4 scrsz(4)*0.86]); %: [left, bottom, width, height]:
% subplot(5,1,1)
% plot(HsC-HsS,'k')
% ylabel('Hs Residual')
% title('Residuals for Compiled minus Original SWAN Slanting Current Test Data (.tab)')
% Hs_max = max(HsC-HsS);
% text(90,sin(3*pi/4),['max = ',num2str(Hs_max,'%f')],'HorizontalAlignment','center');
% 
% subplot(5,1,2)
% plot(DirC-DirS,'k')
% ylabel('Direction Residual')
% Dir_max = max(DirC-DirS);
% text(90,sin(3*pi/4),['max = ',num2str(Dir_max,'%f')],'HorizontalAlignment','center');
% 
% subplot(5,1,3)
% plot(TC-TS,'k')
% ylabel('Period Residual')
% T_max = max(TC-TS);
% text(90,sin(3*pi/4),['max = ',num2str(T_max,'%f')],'HorizontalAlignment','center');
% 
% subplot(5,1,4)
% plot(DistC-DistS,'k')
% ylabel('Distance Residual')
% Dist_max = max(DistC-DistS);
% text(90,sin(3*pi/4),['max = ',num2str(Dist_max,'%f')],'HorizontalAlignment','center');
% 
% subplot(5,1,5)
% plot(RTpeakC-RTpeakS,'k')
% xlabel('iteration')
% ylabel('RTpeak Residual')
% RTpeak_max = max(RTpeakC-RTpeakS);
% text(90,sin(3*pi/4),['max = ',num2str(RTpeak_max,'%f')],'HorizontalAlignment','center');

