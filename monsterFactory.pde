// GLOBAL VARIABLES
int margin = 20;
int index = int(random(5));  

// GLOBAL VARIABLES for the interface and buttons
int handleX, handleY;     // Position of button area
int handleSizeX = 60;     // Width of button 
int handleSizeY = 180;    // Height of button
color backgroundColor, rectColor, baseColor, rectHighlight, rectPressed, currentColor;
boolean handleOver = false;
int textX = 395;
int ellipseY;
int handleStickY;

// Set an index for returning arrays in image strips and text
// this index is used all over the place!

void setup() {
  size (600, 300);
  background (60);
  noStroke();
  smooth();
  frameRate(10);
}

void draw() {
  drawInterface();
  drawText();

  // this is just for testing purposes
  // random index generator should be global, like the one at the
  // beggining of the script.
  // int indexTemp = int(random(5));  
  // index = indexTemp;
}

