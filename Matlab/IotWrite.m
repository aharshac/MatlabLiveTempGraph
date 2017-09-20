function IotWrite(temperature)
    channelID = 334190;
    writeKey  = 'Q3MGW0S6LZVX8OY6';
    % Upload temerature and UNIX timestamp
    thingSpeakWrite(channelID, [temperature posixtime(datetime('now'))], 'WriteKey', writeKey);
end