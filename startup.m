%% Robot Manipulator Control Example 
clear
clc
addpath(genpath(pwd));

% Set the simulation cache folder to a work folder
if ~isfolder('work')
    mkdir('work')
end
Simulink.fileGenControl('set','CacheFolder','work')

% % Check dependencies and address them 
% if checkDependencies
%     edit('openManipulatorIK.m');
%     edit('Readme.md')
%     open_system('openManipulatorWaypointTracking')
%     open_system('openManipulatorBallTracking')
% else
%     disp('Please make sure all dependencies are on the MATLAB path');
% end