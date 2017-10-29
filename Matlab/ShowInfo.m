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


% Show info
% Display Windows MsgBox if exactly one argument (message) is supplied
function ShowInfo(message, varargin)
    % Prevent this script from running
    if nargin == 0
        return; 
    end

    disp(strcat("Info: ", message));
    if (nargin == 1)
        msgbox(message, 'SP Project - Matlab Live Temperature Graph', 'help');
    end
end

