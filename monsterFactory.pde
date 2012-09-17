int margin = 20;
int index = int(random(5));  

// Set an index for returning arrays in image strips and text
// this index is used all over the place!

void setup() {
  size (600, 300);
  background (60);
  noStroke();
  smooth();
  frameRate(3);
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

