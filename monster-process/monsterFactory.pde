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

int pixelSize = 20;
int startingX = 110;
int startingY = 110;

//void setup() {
//  size (500, 500);
//  background (51, 1, 106);
//  noStroke();
//}

//void draw() {

//helmet
//white
//fill (255);

void avatar() {
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect (startingX + 2 * pixelSize, startingY + 2 * pixelSize, 9 * pixelSize, 10 * pixelSize);
  rect (startingX + 1 * pixelSize, startingY + 3 * pixelSize, pixelSize, 8 * pixelSize);
  rect (startingX, startingY + 4 * pixelSize, pixelSize, 6 * pixelSize);
  rect (startingX + 11 * pixelSize, startingY + 4 * pixelSize, pixelSize, 7 * pixelSize);

  //black
  //fill (0);
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect (startingX + 2 * pixelSize, startingY + 4 * pixelSize, 8 * pixelSize, 7 * pixelSize);
  rect (startingX + 1 * pixelSize, startingY + 5 * pixelSize, 10 * pixelSize, 5 * pixelSize);

  //helmet shadows
  //fill (210);
  fill(random(0, 255), random(0, 255), random(0, 255)); 
  rect (startingX, startingY + 10 * pixelSize, pixelSize, pixelSize);
  rect (startingX + 1 * pixelSize, startingY + 11 * pixelSize, pixelSize, pixelSize);
  rect (startingX + 11 * pixelSize, startingY + 3 * pixelSize, pixelSize, pixelSize);
  rect (startingX + 11 * pixelSize, startingY + 11 * pixelSize, pixelSize, pixelSize);
  rect (startingX + 12 * pixelSize, startingY + 4 * pixelSize, pixelSize, 7 * pixelSize);
  //reflection
  rect (startingX + 3 * pixelSize, startingY + 5 * pixelSize, 4 * pixelSize, pixelSize);
  rect (startingX + 2 * pixelSize, startingY + 6 * pixelSize, pixelSize, pixelSize);

  //neck
  //fill (31, 9, 0);
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect (startingX + 4 * pixelSize, startingY + 12 * pixelSize, 6 * pixelSize, pixelSize);

  //body
  //fill (255, 76, 5);
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect (startingX + 4 * pixelSize, startingY + 13 * pixelSize, 6 * pixelSize, 4 * pixelSize);

  //arms
  //fill (178, 50, 0);
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect (startingX + 3 * pixelSize, startingY + 13 * pixelSize, pixelSize, pixelSize);
  rect (startingX + 10 * pixelSize, startingY + 13 * pixelSize, pixelSize, pixelSize);
  //pants
  rect (startingX + 4 * pixelSize, startingY + 17 * pixelSize, 6 * pixelSize, pixelSize);

  //wrists
  //fill (0);
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect (startingX + 3 * pixelSize, startingY + 14 * pixelSize, pixelSize, pixelSize);
  rect (startingX + 10 * pixelSize, startingY + 14 * pixelSize, pixelSize, pixelSize);

  //hands
  //fill (255, 213, 170);
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect (startingX + 3 * pixelSize, startingY + 15 * pixelSize, pixelSize, pixelSize);
  rect (startingX + 10 * pixelSize, startingY + 15 * pixelSize, pixelSize, pixelSize);

  //feet
  //fill (70);
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect (startingX + 4 * pixelSize, startingY + 18 * pixelSize, 2 * pixelSize, pixelSize);
  rect (startingX + 8 * pixelSize, startingY + 18 * pixelSize, 2 * pixelSize, pixelSize);

  //tie
  //fill (255);
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect (startingX + 6 * pixelSize, startingY + 13 * pixelSize, pixelSize, 3 * pixelSize);

  //badge
  //fill (51, 1, 106);
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect (startingX + 8 * pixelSize, startingY + 14 * pixelSize, pixelSize, pixelSize);
}



void avatar2() {
  //head
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(startingX + 4 * pixelSize, startingY + 3 * pixelSize, 4 * pixelSize, 9 * pixelSize);
  rect(startingX + 2 * pixelSize, startingY + 4 * pixelSize, 7 * pixelSize, 8 * pixelSize);
  rect(startingX + pixelSize, startingY + 5 * pixelSize, 10 * pixelSize, 7 * pixelSize);
  rect(startingX, startingY + 6 * pixelSize, 12 * pixelSize, 5 * pixelSize);
  //atenna
  rect(startingX + 6 * pixelSize, startingY + 1 * pixelSize, pixelSize, 2 * pixelSize);
  rect(startingX + 7 * pixelSize, startingY, pixelSize, pixelSize);
  rect(startingX + 8 * pixelSize, startingY - 1 * pixelSize, pixelSize, pixelSize);
  
  //head shadow
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(startingX + 8 * pixelSize, startingY + 3 * pixelSize, pixelSize, pixelSize);
  rect(startingX + 9 * pixelSize, startingY + 4 * pixelSize, 2 * pixelSize, pixelSize);
  rect(startingX + 11 * pixelSize, startingY + 5 * pixelSize, pixelSize, pixelSize);
  rect(startingX + 12 * pixelSize, startingY + 6 * pixelSize, pixelSize, 5 * pixelSize);
  rect(startingX, startingY + 10 * pixelSize, pixelSize, pixelSize);
  rect(startingX + pixelSize, startingY + 11 * pixelSize, pixelSize, pixelSize);
  rect(startingX + 11 * pixelSize, startingY + 11 * pixelSize, pixelSize, pixelSize);
  rect(startingX + 7 * pixelSize, startingY - pixelSize, pixelSize, pixelSize);
  rect(startingX + 8 * pixelSize, startingY, pixelSize, pixelSize);
  
  //eyes white
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(startingX + 5 * pixelSize, startingY + 4 * pixelSize, pixelSize, 3 * pixelSize);
  rect(startingX + 4 * pixelSize, startingY + 5 * pixelSize, 3 * pixelSize, pixelSize);
  
  rect(startingX + 2 * pixelSize, startingY + 6 * pixelSize, pixelSize, 3 * pixelSize);
  rect(startingX + 1 * pixelSize, startingY + 7 * pixelSize, 3 * pixelSize, pixelSize);
  
  rect(startingX + 8 * pixelSize, startingY + 6 * pixelSize, pixelSize, 3 * pixelSize);
  rect(startingX + 7 * pixelSize, startingY + 7 * pixelSize, 3 * pixelSize, pixelSize);
  
  //pupil and mouth
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(startingX + 5 * pixelSize, startingY + 5 * pixelSize, pixelSize, pixelSize);
  rect(startingX + 2 * pixelSize, startingY + 7 * pixelSize, pixelSize, pixelSize);
  rect(startingX + 8 * pixelSize, startingY + 7 * pixelSize, pixelSize, pixelSize);
  rect(startingX + 3 * pixelSize, startingY + 9 * pixelSize, 5 * pixelSize, pixelSize);
  
  //teeth
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(startingX + 6 * pixelSize, startingY + 10 * pixelSize, pixelSize, pixelSize);
  rect(startingX + 4 * pixelSize, startingY + 10 * pixelSize, pixelSize, pixelSize);
  
  //texture
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(startingX + pixelSize, startingY + 10 * pixelSize, pixelSize, pixelSize);
  rect(startingX + 2 * pixelSize, startingY + 11 * pixelSize, pixelSize, pixelSize);
  rect(startingX + 9 * pixelSize, startingY + 10 * pixelSize, pixelSize, pixelSize);
  rect(startingX + 8 * pixelSize, startingY + 11 * pixelSize, pixelSize, pixelSize);
  
  //neck
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(startingX + 5 * pixelSize, startingY + 12 * pixelSize, 4 * pixelSize, pixelSize);
  
  //body
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(startingX + 4 * pixelSize, startingY + 13 * pixelSize, 6 * pixelSize, 4 * pixelSize);
  rect(startingX + 3 * pixelSize, startingY + 14 * pixelSize, 8 * pixelSize, pixelSize);
  
  //pocket
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(startingX + 5 * pixelSize, startingY + 14 * pixelSize, 4 * pixelSize, pixelSize);
  rect(startingX + 6 * pixelSize, startingY + 15 * pixelSize, 2 * pixelSize, pixelSize);
  
  //hands
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(startingX + 3 * pixelSize, startingY + 15 * pixelSize, pixelSize, pixelSize);
  rect(startingX + 10 * pixelSize, startingY + 15 * pixelSize, pixelSize, pixelSize);
  //feet
  rect(startingX + 3 * pixelSize, startingY + 18 * pixelSize, 3 * pixelSize, pixelSize);
  rect(startingX + 7 * pixelSize, startingY + 18 * pixelSize, 3 * pixelSize, pixelSize);
  
  //toes
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(startingX + 4 * pixelSize, startingY + 18 * pixelSize, pixelSize, pixelSize);
  rect(startingX + 8 * pixelSize, startingY + 18 * pixelSize, pixelSize, pixelSize);
  
  //pants
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(startingX + 4 * pixelSize, startingY + 17 * pixelSize, 6 * pixelSize, pixelSize);
}

void avatar3() {
  //head
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(startingX + 2 * pixelSize, startingY + 2 * pixelSize, 2 * pixelSize, pixelSize);
  rect(startingX + 9 * pixelSize, startingY + 2 * pixelSize, 2 * pixelSize, pixelSize);
  rect(startingX + pixelSize, startingY + 3 * pixelSize, 4 * pixelSize, pixelSize);
  rect(startingX + 8 * pixelSize, startingY + 3 * pixelSize, 4 * pixelSize, pixelSize);
  rect(startingX, startingY + 4 * pixelSize, 13 * pixelSize, pixelSize);
  rect(startingX + pixelSize, startingY + 5 * pixelSize, 10 * pixelSize, 6 * pixelSize);
  rect(startingX, startingY + 6 * pixelSize, 12 * pixelSize, 4 * pixelSize);
  rect(startingX + 4 * pixelSize, startingY + 11 * pixelSize, 6 * pixelSize, pixelSize);
  
  //head shadow
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(startingX + 11 * pixelSize, startingY + 5 * pixelSize, pixelSize, pixelSize);
  rect(startingX + 12 * pixelSize, startingY + 6 * pixelSize, pixelSize, 4 * pixelSize);
  rect(startingX, startingY + 9 * pixelSize, pixelSize, pixelSize);
  rect(startingX + pixelSize, startingY + 10 * pixelSize, pixelSize, pixelSize);
  rect(startingX + 3 * pixelSize, startingY + 11 * pixelSize, pixelSize, pixelSize);
  rect(startingX + 11 * pixelSize, startingY + 10 * pixelSize, pixelSize, pixelSize);
  rect(startingX + 10 * pixelSize, startingY + 11 * pixelSize, pixelSize, pixelSize);
  
  rect(startingX + 9 * pixelSize, startingY + 12 * pixelSize, pixelSize, pixelSize);//neck

  
  //eyes white
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(startingX + 2 * pixelSize, startingY + 3 * pixelSize, 2 * pixelSize, 3 * pixelSize);
  rect(startingX + pixelSize, startingY + 4 * pixelSize, 4 * pixelSize, pixelSize);
  
  rect(startingX + 9 * pixelSize, startingY + 3 * pixelSize, 2 * pixelSize, 3 * pixelSize);
  rect(startingX + 8 * pixelSize, startingY + 4 * pixelSize, 4 * pixelSize, pixelSize);
  
  //pupil
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(startingX + 2 * pixelSize, startingY + 4 * pixelSize, pixelSize, pixelSize);
  rect(startingX + 10 * pixelSize, startingY + 4 * pixelSize, pixelSize, pixelSize);
  
  //mouth
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(startingX + 2 * pixelSize, startingY + 7 * pixelSize, 9 * pixelSize, 2 * pixelSize);
  rect(startingX + 4 * pixelSize, startingY + 9 * pixelSize, 5 * pixelSize, pixelSize);
  rect(startingX + 5 * pixelSize, startingY + 10 * pixelSize, 3 * pixelSize, pixelSize);
  
  //mouth inside
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(startingX + 5 * pixelSize, startingY + 8 * pixelSize, 3 * pixelSize, 2 * pixelSize);
  
  //teeth
  //fill(random(0, 255), random(0, 255), random(0, 255));
  fill(255);//alwayes white
  rect(startingX + 2 * pixelSize, startingY + 8 * pixelSize, pixelSize, pixelSize);
  rect(startingX + 4 * pixelSize, startingY + 8 * pixelSize, pixelSize, pixelSize);
  rect(startingX + 6 * pixelSize, startingY + 8 * pixelSize, pixelSize, pixelSize);
  rect(startingX + 8 * pixelSize, startingY + 8 * pixelSize, pixelSize, pixelSize);
  rect(startingX + 10 * pixelSize, startingY + 8 * pixelSize, pixelSize, pixelSize);
  
  //neck
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(startingX + 5 * pixelSize, startingY + 12 * pixelSize, 4 * pixelSize, pixelSize);
  
  //body
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(startingX + 3 * pixelSize, startingY + 13 * pixelSize, 8 * pixelSize, 3 * pixelSize);
  rect(startingX + 4 * pixelSize, startingY + 16 * pixelSize, 6 * pixelSize, pixelSize);
  //tail
  rect(startingX + 11 * pixelSize, startingY + 14 * pixelSize, 2 * pixelSize, pixelSize);
  rect(startingX + 13 * pixelSize, startingY + 13 * pixelSize, pixelSize, pixelSize);
  
  //tail shadow
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(startingX + 11 * pixelSize, startingY + 15 * pixelSize, 2 * pixelSize, pixelSize);
  rect(startingX + 13 * pixelSize, startingY + 14 * pixelSize, pixelSize, pixelSize);  
  rect(startingX + 10 * pixelSize, startingY + 16 * pixelSize, pixelSize, pixelSize);  
   
  //hands
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(startingX + 4 * pixelSize, startingY + 13 * pixelSize, pixelSize, pixelSize);
  rect(startingX + 5 * pixelSize, startingY + 14 * pixelSize, pixelSize, pixelSize);
  rect(startingX + 4 * pixelSize, startingY + 15 * pixelSize, pixelSize, pixelSize);
  
  rect(startingX + 9 * pixelSize, startingY + 13 * pixelSize, pixelSize, pixelSize);
  rect(startingX + 8 * pixelSize, startingY + 14 * pixelSize, pixelSize, pixelSize);
  rect(startingX + 9 * pixelSize, startingY + 15 * pixelSize, pixelSize, pixelSize);
  
  //feet
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(startingX + 3 * pixelSize, startingY + 18 * pixelSize, 2 * pixelSize, pixelSize);
  rect(startingX + 6 * pixelSize, startingY + 18 * pixelSize, 2 * pixelSize, pixelSize);
  rect(startingX + 9 * pixelSize, startingY + 18 * pixelSize, 2 * pixelSize, pixelSize);
  
  //pants
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(startingX + 4 * pixelSize, startingY + 17 * pixelSize, 6 * pixelSize, pixelSize);
}
void drawInterface() {
  background (backgroundColor);
  fill(90);

  /* 
   draw background for comic strips might remove them later,
   or just place the images over this
   */
  noFill();
  strokeWeight(2);
  stroke(90);
  rect(margin, margin, 270, 160); 
  rect(margin, margin + 160, 270, 100);

  // draw the text area background
  fill(90);
  rect(380, 0, 220, 300);

  // main button, slot machine handle
  rectColor = color(50);
  rectHighlight = color(60, 0, 0);
  rectPressed = color(0, 150, 0);
  baseColor = color(50);
  currentColor = baseColor;
  handleX = 305;
  handleY = 50;


  update(mouseX, mouseY);

  if (handleOver) {
    fill(rectHighlight);
    cursor(HAND);
    if (mousePressed == true) {
      fill(rectPressed);
    }
  } 
  else {
    fill(rectColor);
    cursor(ARROW);
  }
  rect(handleX, handleY, handleSizeX, handleSizeY);
}
void update(int x, int y) {
  if ( overRect(handleX, handleY, handleSizeX, handleSizeY) ) {
    handleOver = true;
  } 
  else {
    handleOver = false;
  }
}

void mousePressed() {
  if (handleOver) {
    currentColor = rectPressed;
    println("click while over");
    int indexTemp = int(random(5));  
    index = indexTemp;  
  }
  else {
    println("click elsewhere");
  }
}
void mouseReleased() {
  if (handleOver) {
    currentColor = rectColor;
    println("released while over");
    
  
    
  }
  else {
    println("released elsewhere");
  }
}

// This boolean will be true whenever the mouse position
// matches the width and/or height of the rectangle
boolean overRect(int x, int y, int width, int height) {
  if (mouseX >= x && mouseX <= x+width && 
    mouseY >= y && mouseY <= y+height) {
    return true;
  } 
  else {
    return false;
  }
}

// in this file, we would get the code to draw the avatars
void drawText() {

  //create two font objetcts
  PFont interfaceFont;
  PFont displayFont;

  // load each fontface into each font object
  interfaceFont = loadFont("Geneva-10.vlw");
  displayFont = loadFont("Mixagex-14.vlw");


  //display the text, using a specified fontface
  textFont(interfaceFont);
  fill(170);
  text("say hello to:", textX, 30); 
  text("I am a:", textX, 105); 

  fill(240);

  // These strings should later be changed to something descriptive
  // of each avatar construction set. Maybe create diferent descriptions,
  // and build them the same way as avatars, by randomizing parts of the text.
  String mDescription1 = "I'm 1 a monster with character, and lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris";
  String mDescription2 = "I'm number 2 maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris";
  String mDescription3 = "If you want 3 then ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris";
  String mDescription4 = "4 is for sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris";
  String mDescription5 = "Remember 5? Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris";
  String mDescription6 = "The 6 nulla, molestie nec bibendum nec, ultrices sed mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris";

  // This array hols each one of the previosly defined string
  String mDescription[] = {
    mDescription1, mDescription2, mDescription3, mDescription4, mDescription5, mDescription6
  };

  // And finally, we display the text on screen, using the random index created in the main tab
  text(mDescription[index], textX, 110, 170, 170);

  // then repeat the pattern, for displaying names
  textFont(displayFont);
  fill(240);

  String mName1 = "Potato Head";
  String mName2 = "Bulls eye";
  String mName3 = "Woody";
  String mName4 = "Buzz";
  String mName5 = "Jesse";

  String mName[] = {
    mName1, mName2, mName3, mName4, mName5
  };

  text(mName[index], textX, 60);
}


