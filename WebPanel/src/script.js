$( document ).ready(function () {
    //  UI
    var ui_online_indicator = $('#state');
    var ui_temperature = $('#temperature');
    var ui_time = $('#time');
    var timer = setInterval(readTemperature, 20 * 1000);
    
    function readTemperature() {
        $.getJSON("https://api.thingspeak.com/channels/334190/fields/1.json", 
            { "api_key":"0R0RFNB6N7SKIRRV", "results":"1" }, 
            function(data, status) {
                // console.log(data);
                
                if (status != "success") {
                    setOnlineState(false);
                    return;
                }
                
                // var obj = $.parseJSON(data);
                var obj = data;
            
                if (obj && obj['feeds'][0]['field1']) {
                    var temp = obj['feeds'][0]['field1'];
                    var created_at = moment(obj['feeds'][0]['created_at']).utc();
                    var now = moment().utc();
                    var delta = now.diff(created_at, 'minutes');
                    
                    // console.log(created_at);
                    // console.log(now);
                    // console.log(delta);
                    
                    if (delta > 1) {
                        setOnlineState(false);
                        setTime(false);
                    } else {
                        if ($.isNumeric(temp)) {
                            temp = parseFloat(temp).toFixed(2);
                            setOnlineState(true);
                            setTemperature(temp);
                            setTime(created_at);
                        }    
                    }
                }
            }
        );
    }

    function setOnlineState(online) {
        ui_online_indicator.removeClass(online ? 'offline' : 'online');
        ui_online_indicator.addClass(online ? 'online' : 'offline');
        ui_online_indicator.text(online ? 'Online' : 'Offline');
        
        if (!online) {
            setTemperature(false);
        }
    }
    
    function setTemperature(temp) {
        var isNumber = $.isNumeric(temp);
        ui_temperature.removeClass(isNumber ? 'offline' : 'online');
        ui_temperature.addClass(isNumber ? 'online' : 'offline');
        ui_temperature.text(isNumber ? temp + " °C" : '-');
    }
    
    function setTime(time) {
        if (time && moment(time).isValid()) {
            ui_time.text(moment(time).add(5, 'hours').add(30, 'minutes').format('D MMM YYYY HH:mm:ss'));
        } else {
            ui_time.text('');
        }
    }
    
    setOnlineState(false);
    readTemperature();
});
