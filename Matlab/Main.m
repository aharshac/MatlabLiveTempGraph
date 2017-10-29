% 
% Matlab Live Temperature Graph
% SP Project
% 
% Credits:
%   Harsha Alva
%   Prathik M. P.
%   Nishan Sequeira
% 
% https://github.com/aharshac/MatlabLiveTempGraph
%

clc;
clear;
disp('SP Project - Matlab Live Temperature Graph');

% Get list of all COM ports
listCOM = seriallist();

% Check if there are available COM ports
if (size(listCOM) == 0) 
    ShowError('No COM ports detected');
    return;
end

% Iterate COM ports
% Evaluate if Arduino and try connection
for i = listCOM
    try
        % Try evaluation of COM device
        ShowInfo(strcat("Trying device ", i{1}), 0);
        devArduino = arduino(i{1}, 'Uno');
    catch exception
        % Not Arduino
        devArduino = [];
    end
end    

% Check if devArduino is empty
try
    % Try evaluation of COM device
    if (isEmpty(devArduino)) 
        ShowError('None of the COM devices were Arduinos');
        return;
    end
catch exception
    % Arduino is not empty, i.e., connected
    ShowInfo('Arduino connected!', 0);
end

% Set Arduino analog pin A0 to read mode
configurePin(devArduino, 'A0', 'AnalogInput');

% Plot live temperature data
PlotLiveData(devArduino);
