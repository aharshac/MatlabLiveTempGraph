% Show info
% Display Windows MsgBox if exactly one argument (message) is supplied
function ShowInfo(message, varargin)
    % Prevent this script from running
    if nargin == 0
        return; 
    end

    disp(strcat("Info: ", message));
    if (nargin == 1)
        msgbox(message, 'SP Assignment 2', 'help');
    end
end

