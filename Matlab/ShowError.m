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


% Show error
% Display Windows MsgBox if exactly one argument (message) is supplied
function ShowError(message)
    % Prevent this script from running
    if nargin == 0
        return; 
    end

    disp(strcat("Error: ", message));
    msgbox(message, 'SP Project - Matlab Live Temperature Graph', 'error');
end