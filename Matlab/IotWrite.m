function IotWrite(temperature)
    % Prevnt this script from running
    if nargin == 0
        return; 
    end
    
    % ThingSpeak channel info and write API key
    channelID = 334190;
    writeKey  = 'Q3MGW0S6LZVX8OY6';
    
    % Upload temerature
    try
        thingSpeakWrite(channelID, temperature, 'WriteKey', writeKey);  % posixtime(datetime('now'))
    catch exception
        disp(exception);
    end
end