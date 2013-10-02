%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Runs the SWAN Refraction Test Case with the compiled source code
% and compares the results between Compiled SWAN, Original SWAN & Analytical
%
% NOTE: BE VERY CAREFUL WITH PATH DEFINITIONS
% NOTE: To run test case, uncomment !line
% NOTE: To run test case, rename input file (a11refr.swn) INPUT
%
% Created by Kelley Ruehl, SNL (12-12-2012)
% Modified by Kelley Ruehl, SNL (4-25-2013)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

close all
clear all
clc

%% Set Program Path locations

% Path Definitions ***MAKE SURE THESE ARE UPDATED
init_path = 'G:\SNL-SWAN\'; % base path
loc_swan = [init_path 'Visual Studio Compiles\SNL_SWAN_v3\SNL_SWAN_v3\Debug\']; % location of source code and newly compiled SWAN.exe
loc_output = [init_path 'SNL-SWAN Test Cases\SNL_SWAN_v3 - 4-25-2013\refrac\']; % location to of SWAN test case I/O files
diff_path = [loc_output 'from SWAN\']; % location of Original SWAN & Analytical test case solutions
fig_path = [loc_output 'figures\']; % location of figure folder

% Move to path of newly compiled source code
cd(loc_swan); % move to the folder where the new *exe is located

% Copy compiled exectuable files to the test case folder
copyfile('snl_swan_v3.exe',loc_output)

%% Run the Compiled SWAN executable with the test case

% Move to SWAN test case folder and Run SWAN
cd(loc_output); % Move to SWAN Input/Output test case files

% This only runs model if input file named 'INPUT'
!snl_swan_v3.exe 

%% Load Refraction Data

% Load Newly Compiled SWAN Solution (.tab)
sol = load('a11ref01.tab');    %Dist, Hsig, Tm01, Dir, Depth, RTpeak  
L = length(sol)-1;            % The last data point is bad (BC= bad data points)
DistC = sol(1:L,1);         % Dist = distance [m]
HsC = sol(1:L,2);           % Hsig = significant wave height [m]
TC = sol(1:L,3);            % Tm01 = spectral peak period [ss]
DirC = sol(1:L,4);          % Dir = direction [deg]
hC = sol(1:L,5);            % Depth = depth [m]
RTpeakC = sol(1:L,6);       % RTpeak = ?? [s]

% Load Newly Compiled SWAN Solution (.tbl)
sol1 = load('a11ref01.tbl');    % HS RTP TM01 TM02 FSPR     
L = length(sol1);            
HsC1 = sol1(1:L,1);          % Hsig = significant wave height [m]
RTPeak1 = sol1(1:L,2);       % RTpeak = ?? [s]
TC1 = sol1(1:L,3);           % Tm01 = spectral peak period [ss]
TC2 = sol1(1:L,4);           % Tm02 = spectral peak period [ss]
FSpr1 = sol1(1:L,5);         % FSpr = ?? [-]

% Move to Original SWAN & Analytical test case folder
cd(diff_path); % move to diffration path to with SWAN results

% Load (Original) SWAN Solution (.tab)
Ssol = load('a11ref01.tab');    %Dist, Hsig, Tm01, Dir, Depth, RTpeak  
L = length(Ssol)-1;           % The last data point is bad (BC= bad data points)
DistS = Ssol(1:L,1);        % Dist = distance [m]
HsS = Ssol(1:L,2);          % Hsig = significant wave height [m]
TS = Ssol(1:L,3);           % Tm01 = spectral peak period [ss]
DirS = Ssol(1:L,4);         % Dir = direction [deg]
hS = Ssol(1:L,5);           % Depth = depth [m]
RTpeakS = Ssol(1:L,6);      % RTpeak = ?? [s]

% Load (Original) SWAN Solution (.tbl)
sol2 = load('a11ref01.tbl');    % HS RTP TM01 TM02 FSPR    
L = length(sol2);             
HsC2 = sol2(1:L,1);          % Hsig = significant wave height [m]
RTPeak2 = sol2(1:L,2);       % RTpeak = ?? [s]
TC3 = sol2(1:L,3);           % Tm01 = spectral peak period [ss]
TC4 = sol2(1:L,4);           % Tm02 = spectral peak period [ss]
FSpr2 = sol2(1:L,5);         % FSpr = ?? [-]

% Load Analytical Solution
refr = importdata('a11refr.ana');   % YP, Hs, Dir, Dep, K, Cg, C
L = length(refr.data);      
DistA = refr.data(1:L,1);   % Yp = Distance [m]
HsA = refr.data(1:L,2);     % Hs = significant wave height [m]
DirA = refr.data(1:L,3);    % Dir = direction [deg]
hA = refr.data(1:L,4);      % Dep = depth [m]
KA = refr.data(1:L,5);      % K = wave number = 2pi/L [rad/m]
CgA = refr.data(1:L,6);     % Cg = wave group velocity [m/s]
CA = refr.data(1:L,7);      % C = wave celerity = L/T [m/s?]
TA = 2*pi./(KA.*CA);        % Calculation of wave period [s]

cd(loc_output); % Move to SWAN Input/Output test case files

%% Plot Comparison of Analytical/Compiled/Original SWAN Refaction Test Data (.tab)

scrsz = get(0,'ScreenSize');
figure('Position',[scrsz(4)*0.5 scrsz(3)*0.025 scrsz(3)*0.4 scrsz(4)*0.86]); %: [left, bottom, width, height]:
subplot(5,1,1)
plot(hA,HsA,'k')
hold on
plot(hC,HsC,'b:.')
hold on
plot(hS,HsS,'r:.')
ylabel('Hs [m]')
xlim([0 20])
legend('Analytical','Compiled','SWAN','Location','NE')
title('Comparison Analytical/Compiled/Original Refraction Test Data (.tab)')
max1 = max(HsC-HsS);
text(10,5,['max diff. = ',num2str(max1,'%f'),' [m]'],'HorizontalAlignment','center');

subplot(5,1,2)
plot(hA,DirA,'k')
hold on
plot(hC,DirC,'b:.')
hold on
plot(hS,DirS,'r:.')
ylabel('Direction [\circ]')
axis([0 20 80 120])
max1 = max(DirC-DirS);
text(16,90,['max diff. = ',num2str(max1,'%f'),' [\circ]'],'HorizontalAlignment','center');

subplot(5,1,3)
plot(hA,TA,'k')
hold on
plot(hC,TC,'b:.')
hold on
plot(hS,TS,'r:.')
ylabel('Period [s]')
axis([0 20 9 11])
max1 = max(TC-TS);
text(16,9.5,['max diff. = ',num2str(max1,'%f'),' [s]'],'HorizontalAlignment','center');

subplot(5,1,4)
plot(hA,DistA,'k')
hold on
plot(hC,DistC,'b:.')
hold on
plot(hS,DistS,'r:.')
ylabel('Distance [m]')
max1 = max(DistC-DistS);
text(16,3000,['max diff. = ',num2str(max1,'%f'),' [m]'],'HorizontalAlignment','center');

% Plot Comparison of Compiled/Original SWAN Refaction Test Data
subplot(5,1,5)
plot(hC,RTpeakC,'b:.')
hold on
plot(hS,RTpeakS,'r:.')
xlabel('h [m]')
ylabel('RTpeak [m]')
axis([0 20 9 11])
legend('Compiled','SWAN')
max1 = max(RTpeakC-RTpeakS);
text(16,9.5,['max diff. = ',num2str(max1,'%f'),' [m]'],'HorizontalAlignment','center');

saveas(gcf,[fig_path 'fig1'],'fig') %Save Figure

%% Plot Comparison of Compiled/Original SWAN Refraction Test Data @Locations (.tbl)

scrsz = get(0,'ScreenSize');
figure('Position',[scrsz(4)*0.5 scrsz(3)*0.025 scrsz(3)*0.4 scrsz(4)*0.86]); %: [left, bottom, width, height]:
subplot(5,1,1)
plot(HsC1,'b:.')
hold on
plot(HsC2,'r:.')
ylabel('Hs [m]')
legend('Compiled','SWAN','Location','NE')
title('Comparison Compiled/Original Refraction Test Data @Locations (.tbl)')
max1 = max(HsC1-HsC2);
text(12,1.25,['max diff. = ',num2str(max1,'%f'),' [m]'],'HorizontalAlignment','center');

subplot(5,1,2)
plot(RTPeak1,'b:.')
hold on
plot(RTPeak2,'r:.')
ylabel('RTPeak [s]')
max1 = max(RTPeak1-RTPeak2);
text(12,11,['max diff. = ',num2str(max1,'%f'),' [s]'],'HorizontalAlignment','center');

subplot(5,1,3)
plot(TC1,'b:.')
hold on
plot(TC3,'r:.')
ylabel('Tm01 [s]')
max1 = max(TC1-TC3);
text(12,10.025,['max diff. = ',num2str(max1,'%f'),' [s]'],'HorizontalAlignment','center');

subplot(5,1,4)
plot(TC2,'b:.')
hold on
plot(TC4,'r:.')
ylabel('Tm02 [s]')
max1 = max(TC2-TC4);
text(12,9.975,['max diff. = ',num2str(max1,'%f'),' [s]'],'HorizontalAlignment','center');

subplot(5,1,5)
plot(FSpr1,'b:.')
hold on
plot(FSpr2,'r:.')
ylabel('FSpr [-]')
xlabel('iteration')
max1 = max(FSpr1-FSpr2);
text(12,0.8205,['max diff. = ',num2str(max1,'%f'),' [-]'],'HorizontalAlignment','center');

saveas(gcf,[fig_path 'fig2'],'fig') %Save Figure



%% Old Plots

%% Plot Comparison of Analytical/Compiled/Original SWAN Refaction Test Data

% figure
% plot(hA,HsA,'k')
% hold on
% plot(hC,HsC,'b:.')
% hold on
% plot(hS,HsS,'r:.')
% xlabel('h [m]')
% ylabel('Hs [m]')
% xlim([0 20])
% legend('Analytical','Compiled','SWAN','Location','SE')
% title('Hs Comparison Refraction Test Data')
% 
% figure
% plot(hA,DirA,'k')
% hold on
% plot(hC,DirC,'b:.')
% hold on
% plot(hS,DirS,'r:.')
% xlabel('h [m]')
% ylabel('Direction [\circ]')
% axis([0 20 80 120])
% legend('Analytical','Compiled','SWAN','Location','SE')
% title('Direction Comparison Refraction Test Data')
% 
% figure
% plot(hA,TA,'k')
% hold on
% plot(hC,TC,'b:.')
% hold on
% plot(hS,TS,'r:.')
% xlabel('h [m]')
% ylabel('Period [s]')
% axis([0 20 9 11])
% legend('Analytical','Compiled','SWAN')
% title('Period Comparison Refraction Test Data')
% 
% figure
% plot(hA,DistA,'k')
% hold on
% plot(hC,DistC,'b:.')
% hold on
% plot(hS,DistS,'r:.')
% xlabel('h [m]')
% ylabel('Distance [m]')
% % xlim([0 20])
% legend('Analytical','Compiled','SWAN')
% title('Distance Comparison Refraction Test Data')


%% Plot Comparison of Compiled/Original SWAN Refaction Test Data

% figure
% plot(hC,RTpeakC,'b:.')
% hold on
% plot(hS,RTpeakS,'r:.')
% xlabel('h [m]')
% ylabel('RTpeak [m]')
% axis([0 20 9 11])
% legend('Compiled','SWAN')
% title('RTpeak Comparison Refraction Test Data')


%% Plot Residuals for Compiled/SWAN Refaction Test Data

% scrsz = get(0,'ScreenSize');
% figure('Position',[scrsz(4)*0.5 scrsz(3)*0.025 scrsz(3)*0.4 scrsz(4)*0.86]); %: [left, bottom, width, height]:
% subplot(5,1,1)
% plot(HsC-HsS,'k')
% ylabel('Hs Residual')
% title('Residuals for Compiled minus SWAN Refaction Test Data')
% 
% subplot(5,1,2)
% plot(DirC-DirS,'k')
% ylabel('Direction Residual')
% 
% subplot(5,1,3)
% plot(TC-TS,'k')
% ylabel('Period Residual')
% 
% subplot(5,1,4)
% plot(DistC-DistS,'k')
% ylabel('Distance Residual')
% 
% subplot(5,1,5)
% plot(RTpeakC-RTpeakS,'k')
% xlabel('iteration')
% ylabel('RTpeak Residual')