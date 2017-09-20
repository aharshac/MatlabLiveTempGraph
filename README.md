# Matlab Live Temperature Graph

Matlab script to show the real-time temperature from an LM35 temperature sensor through an Arduino.

Assignent for Signal Processing subject of [M. Tech. - Industrial Automation & Robotics](https://manipal.edu/mit/programs/program-list/mtech/mtech-in-industrial-automation-robotics-manipal-university.html) course at [MIT, Manipal](https://manipal.edu/mit.html).

&nbsp;

## Features
* Live temperature graph in Matlab.
* Periodic updates to [ThingSpeak](https://thingspeak.com/) via HTTP GET requests.
* Web panel hosted on [Firebase](https://firebase.google.com/) to display recent temperature from ThingSpeak via polling.
* Non-blocking HTTP requests through parallel processing.

&nbsp;

##  Matlab Script
Run `Matlab/Main.m` in Matlab.

&nbsp;

## Web Panel
Access Web Panel at https://sp-mlt.firebaseapp.com/.

### Testing
Developed using [Node.js](http://nodejs.org/).
1. Change directory to `WebPanel`.
2. Install **npm** packages.    
`npm i`
3. Run `npm test`.

&nbsp;

## Credits
- [Harsha Alva](https://alvaharsha.com/)
- Prathik M. P.
- Nishan Sequeira