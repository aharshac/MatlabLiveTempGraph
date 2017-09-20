function PlotLiveData(device)
    % Prevnt this script from running
    if nargin == 0
        return; 
    end

    % Initialize figure
    fig = figure;
    line = animatedline;
    axes = gca;
    axes.YGrid = 'on';
    axes.YLim = [20 40];    % Limit Y-axis to 20-40 °C
    title("Live Temperature");
    xlabel('Time');
    ylabel('Temperature (°C)');

    % Start reference time
    startTime = datetime('now');
    
    % Loop until figure is closed!
    while ishandle(fig)
        % Read instantaneous voltage value
        inputVoltage = readVoltage(device, 'A0');
        
        
        % Display instantaneous voltage value
        % disp(inputVoltage);
        
        % Calculate temperature from instantaneous voltage
        % 10 mV = 1 °C
        % Therefore, temperature = inputVoltage / (10 * 10^-3) 
        %       = inputVoltage / (10^-2) 
        %       = inputVoltage * (10^+2)
        temp = (inputVoltage) * 100;
        
        % Get current time
        t = datetime('now') - startTime;
        
        % Add points to animation
        addpoints(line, datenum(t), temp)
        
        % Update axes
        xLimitStart = t-seconds(10);
        axes.XLim = datenum([xLimitStart t]);
        datetick('x','keeplimits');
        drawnow;
    end
    
    % Closing
    ShowInfo('Figure closed!', 0);
end