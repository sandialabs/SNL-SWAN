%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Runs the SWAN Diffraction Test Case with the compiled source code
% and compares the results between Compiled SWAN & Original SWAN 
%
% NOTE: SWAN Dir fluctuates between 0/360[deg]
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
loc_output = [init_path 'SWAN Test Cases\SNL_SWAN_v3 - 2-8-2013\diffrac\']; %location to save SWAN Input/Output files
diff_path = [loc_output 'from SWAN\']; % location of Original SWAN & Analytical test case solutions
fig_path = [loc_output 'figures\']; % location of figure folder

% Move to path of newly compiled source code
cd(loc_swan); % move to the folder where SWAN.exe is located

% Copy compiled exectuable files to the test case folder
copyfile('snl_swan_v3.exe',loc_output)

%% Run the Compiled SWAN executable with the test case

% Move to SWAN test case folder and Run SWAN
cd(loc_output); % Move to SWAN Input/Output test case files

% This only runs model if input file named 'INPUT'
!snl_swan_v3.exe 

%% Load Diffraction Data

% Load Newly Compiled SWAN Solution (.dat)
load dif90C1.dat    %HSIGN, DIR
load dif90C2.dat    %HSIGN, DIR
load dif90C3.dat    %HSIGN, DIR
L = length(dif90C3);    % The last data point is bad (BC= bad data points

% Move to Original SWAN & Analytical test case folder
cd(diff_path); % move to diffration path to with SWAN results

% Load (Original) SWAN Solution (.dat)
SWAN_dif90C1 = load('dif90C1.dat');    %HSIGN, DIR
SWAN_dif90C2 = load('dif90C2.dat');    %HSIGN, DIR
SWAN_dif90C3 = load('dif90C3.dat');    %HSIGN, DIR

cd(loc_output); % move to test case I/O folder that now also has swan.exe

%% Plot Comparison of Compiled/Original SWAN Diffraction Test Data (.dat)

% Hs vs. Iteration
scrsz = get(0,'ScreenSize');
figure('Position',[scrsz(4)*0.5 scrsz(3)*0.05 scrsz(3)*0.4 scrsz(4)*0.8]); %: [left, bottom, width, height]:
subplot(3,1,1)
plot(dif90C1(1:L,1),'b:.')
hold on
plot(SWAN_dif90C1(1:L,1),'r:.')
ylabel('Hs Loc.1 [m]')
legend('Compiled','SWAN')
title('Hs Comparison Diffraction Test Data (.tab)')
max1 = max(dif90C1(1:L,1)-SWAN_dif90C1(1:L,1));
text(16,0.25,['max diff. = ',num2str(max1,'%f'),' [m]'],'HorizontalAlignment','center');

subplot(3,1,2)
plot(dif90C2(1:L,1),'b.:')
hold on
plot(SWAN_dif90C2(1:L,1),'r:.')
ylabel('Hs Loc.2 [m]')
max1 = max(dif90C2(1:L,1)-SWAN_dif90C2(1:L,1));
text(16,0.25,['max diff. = ',num2str(max1,'%f'),' [m]'],'HorizontalAlignment','center');

subplot(3,1,3)
plot(dif90C3(1:L,1),'b.:')
hold on
plot(SWAN_dif90C3(1:L,1),'r:.')
xlabel('interation')
ylabel('Hs Loc.3 [m]')
max1 = max(dif90C3(1:L,1)-SWAN_dif90C3(1:L,1));
text(16,0.25,['max diff. = ',num2str(max1,'%f'),' [m]'],'HorizontalAlignment','center');

saveas(gcf,[fig_path 'fig1'],'fig') %Save Figure

% Direction vs. Iteration
scrsz = get(0,'ScreenSize');
figure('Position',[scrsz(4)*0.5 scrsz(3)*0.05 scrsz(3)*0.4 scrsz(4)*0.8]); %: [left, bottom, width, height]:
subplot(3,1,1)
plot(dif90C1(1:L,2),'b:.')
hold on
plot(SWAN_dif90C1(1:L,2),'r:.')
ylabel('Dir Loc.1 [\circ]')
legend('Compiled','SWAN')
title('Direction Comparison Diffraction Test Data (.tab) Note fluctuation bw 0/360[deg]')
max1 = max(dif90C1(1:L,2)-SWAN_dif90C1(1:L,2));
text(10,300,['max diff. = ',num2str(max1,'%f'),' [\circ]'],'HorizontalAlignment','center');

subplot(3,1,2)
plot(dif90C2(1:L,2),'b.:')
hold on
plot(SWAN_dif90C2(1:L,2),'r:.')
ylabel('Dir Loc.2 [\circ]')
max1 = max(dif90C2(1:L,2)-SWAN_dif90C2(1:L,2));
text(10,300,['max diff. = ',num2str(max1,'%f'),' [\circ]'],'HorizontalAlignment','center');

subplot(3,1,3)
plot(dif90C3(1:L,2),'b.:')
hold on
plot(SWAN_dif90C3(1:L,2),'r:.')
xlabel('interation')
ylabel('Dir Loc.3 [\circ]')
max1 = max(dif90C3(1:L,2)-SWAN_dif90C3(1:L,2));
text(10,300,['max diff. = ',num2str(max1,'%f'),' [\circ]'],'HorizontalAlignment','center');

saveas(gcf,[fig_path 'fig2'],'fig') %Save Figure

%% Old Plots

%% Plot Residuals for Compiled/SWAN Diffraction Test Data

% % Hs Residuals
% scrsz = get(0,'ScreenSize');
% figure('Position',[scrsz(4)*0.5 scrsz(3)*0.05 scrsz(3)*0.4 scrsz(4)*0.8]); %: [left, bottom, width, height]:
% subplot(3,1,1)
% plot(SWAN_dif90C1(1:L,1)-dif90C1(1:L,1),'k')
% xlim([1 18])
% ylabel('Hs Residual Loc. 1 [m]')
% title('Hs Residual of Compiled vs. SWAN Diff Test Data')
% 
% subplot(3,1,2)
% plot(SWAN_dif90C2(1:L,1)-dif90C2(1:L,1),'k')
% xlim([1 18])
% ylabel('Hs Residual Loc. 2 [m]')
% 
% subplot(3,1,3)
% plot(SWAN_dif90C3(1:L,1)-dif90C3(1:L,1),'k')
% xlim([1 18])
% ylabel('Hs Residual Loc. 3 [m]')
% xlabel('iteration')
% 
% 
% % Direction Residuals
% scrsz = get(0,'ScreenSize');
% figure('Position',[scrsz(4)*0.5 scrsz(3)*0.05 scrsz(3)*0.4 scrsz(4)*0.8]); %: [left, bottom, width, height]:
% subplot(3,1,1)
% plot(SWAN_dif90C1(1:L,2)-dif90C1(1:L,2),'k')
% xlim([1 18])
% ylabel('Direction Residual Loc. 1 [\circ]')
% % axis([0 1 0 360])
% title('Direction Residual of Compiled vs. SWAN Diff Test Data')
% 
% subplot(3,1,2)
% plot(SWAN_dif90C2(1:L,2)-dif90C2(1:L,2),'k')
% xlim([1 18])
% ylabel('Direction Residual Loc. 2 [\circ]')
% 
% subplot(3,1,3)
% plot(SWAN_dif90C3(1:L,2)-dif90C3(1:L,2),'k')
% ylabel('Direction Residual Loc. 3 [\circ]')
% xlim([1 18])
% xlabel('iteration')

% Direction vs. Hs
% scrsz = get(0,'ScreenSize');
% figure('Position',[scrsz(4)*0.5 scrsz(3)*0.05 scrsz(3)*0.4 scrsz(4)*0.8]); %: [left, bottom, width, height]:
% subplot(3,1,1)
% plot(dif90C1(1:L,1),dif90C1(1:L,2),'b:.')
% hold on
% plot(SWAN_dif90C1(1:L,1),SWAN_dif90C1(1:L,2),'r:.')
% ylabel('Direction Loc. 1 [\circ]')
% axis([0 1 0 360])
% legend('Compiled','SWAN')
% title('Comparison of Compiled vs. SWAN Diff Test Data')
% 
% subplot(3,1,2)
% plot(dif90C2(1:L,1),dif90C2(1:L,2),'b.:')
% hold on
% plot(SWAN_dif90C2(1:L,1),SWAN_dif90C2(1:L,2),'r:.')
% ylabel('Direction Loc. 2 [\circ]')
% axis([0 1 0 360])
% 
% subplot(3,1,3)
% plot(dif90C3(1:L,1),dif90C3(1:L,2),'b.:')
% hold on
% plot(SWAN_dif90C3(1:L,1),SWAN_dif90C3(1:L,2),'r:.')
% xlabel('Hs [m]')
% ylabel('Direction Loc. 3 [\circ]')
% axis([0 1 0 360])

