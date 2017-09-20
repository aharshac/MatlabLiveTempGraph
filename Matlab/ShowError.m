% Show error
% Display Windows MsgBox if exactly one argument (message) is supplied
function ShowError(message)
    % Prevent this script from running
    if nargin == 0
        return; 
    end

    disp(strcat("Error: ", message));
    msgbox(message, 'SP Assignment 2', 'error');
end