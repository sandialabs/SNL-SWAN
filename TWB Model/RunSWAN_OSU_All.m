%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Run this file to run SNL-SWAN model of OSU TWB:
%   -Calls on Run_OSU_SWAN.m and Plot_OSU_SWAN.m
%   -In order to just run plotting script comment lines:
%       Line 77: Plot_OSU_SWAN;
%       Line 212: %Run SWAN cd(loc_swan); !swan.exe
% NOTE: When running different versions of SNL-SWAN, must change lines 66
% and 67, they add local *.exe directory. This is the best way to compare
% different versions of the WEC-Module
%
% Created by Jason Magalen, SEI (2011)
% Modified by Kelley Ruehl, SNL (6-14-2013)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Script controls the looping of SWAN model runs
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear
close all
clc
tic

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Number of WEC Devices to Model
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
WECnums = [1 3 5]; %Number of Wec Array configurations
% WECnums = [5]; %Number of WEC Array configurations

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Establish Sensitivity Analysis Parameter Coefficients
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% transm_coeffs = [0:0.1:1]; %number of transmission coefficients to run
transm_coeffs = [0]; %number of transmission coefficients to run
reflect = [0]; %number of reflection coefficients to run
gamma = 1; %1 is PM - Pierson Moskowitz, 3.3. is JONSWAP
mwd = 0; %in degrees. 0 is normal incidence

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Load Wave Conditions from OSU tests
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% waveconds = [0.0454	1.62; %Wave height and period scenarios to model
%     0.0758	1.42;
%     0.0758	1.82;
%     0.0758	2.22;
%     0.136	2.22;
%     0.0454	1.22;
%     0.106	1.62]; %wave height (m) and Period (s) pairs for each scenario
waveconds = [0.0454	1.62]; %Wave height and period scenarios to model

% ms_vals = [8 20 1000]; %directional spreading; m = 2*s, where s is the spreading index provided by OSU
ms_vals = [1000]; %directional spreading; m = 2*s, where s is the spreading index provided by OSU

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SWAN Frequency and Direction parameters
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
mdc = 180; %2 degree directional bin width (per OSU correspondence)
flow = 0.25; %min wave frequency (per OSU correspondence)
fhigh = 5; %max wave frequency (per OSU correspondence)
msc = 20; %frequency bins (per OSU correspondence)
fac = 1.0; %multiplying factor (meters to feet, etc.)
idla = 3;
nhedf = 0;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% SET Program Path locations
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
init_path = 'G:\SNL-SWAN\SNL-SWAN OSU TWB Model-2\'; %base path
loc_swan = 'G:\SNL-SWAN\SNL-SWAN OSU TWB Model-2\SNL-SWAN\'; %location of SWAN.exe and INPUT files, and SWAN output files
loc_output= [init_path 'I_O\']; %location to save SWAN INPUT file and SWAN output files
% cd(loc_swan);
addpath(genpath('SNL-SWAN'));     %Adds path with SNL-SWAN WEC Module *.txt files
addpath(genpath('OSUData'));     %Adds path with SNL-SWAN WEC Module *.txt files

runnum = 0; %initializes a counter

for mm = 1:length(waveconds(:,1)) %loop over number of wave scenarios
    for nn = 1:length(WECnums) %loop over number of WEC array configurations
        for pp = 1:length(transm_coeffs) %loop over number of transmission coefficients
            for qq = 1:length(ms_vals) %loop over number of wave directional spreading parameters
                
                Hs = waveconds(mm,1); %Significant wave height, in meters
                Tp = waveconds(mm,2); %Peak period, in secs
                dd = ms_vals(qq); %directional spreading parameter, s: cos(theta)^(2*s) ~ cos(theta)^m, as specified in SWAN
                transm = transm_coeffs(pp); %Transmission coefficient
                WECnum = WECnums(nn); %WEC device array configuration
                
                runnum = runnum+1 %increment counter and display to screen
                
                if (transm^2+reflect^2<=1) %QC check, model will not run if this is false
                    disp('Processing OSU Wave Tank Model...')
                    Run_OSU_SWAN; %Run script to create INPUT and run model                  
                    Plot_OSU_SWAN; %Plots model results
                end
            end
        end
    end
end

toc;
Final_SC_timeout_mins=toc/60 %total time for run
