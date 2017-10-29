# Matlab Live Temperature Graph

Matlab script to show the real-time temperature from an LM35 temperature sensor through an Arduino.

Project for Signal Processing subject of [M. Tech. - Industrial Automation & Robotics](https://manipal.edu/mit/programs/program-list/mtech/mtech-in-industrial-automation-robotics-manipal-university.html) course handled by Ms. Ansu Mathew at [MIT, Manipal](https://manipal.edu/mit.html).

![Motion screencap](https://media.giphy.com/media/xT9IgNNT9yq9OOXlL2/giphy.gif)    
https://youtu.be/w5Vl4pejiA0

&nbsp;

## Features
* Live temperature graph in Matlab.
* Periodic updates to [ThingSpeak](https://thingspeak.com/) via HTTP GET requests.
* Web panel hosted on [Firebase](https://firebase.google.com/) to display recent temperature from ThingSpeak via polling.
* Non-blocking HTTP requests through parallel processing.

&nbsp;

## Prototype

&nbsp;

##  Matlab Script
Run `Matlab/Main.m` in Matlab.

### Prerequisites
1. MATLAB Support Package for Arduino Hardware
2. ThingSpeak Support Toolbox

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