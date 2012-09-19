// GLOBAL VARIABLES
//int margin = 20;
//int index = int(random(5));  

// GLOBAL VARIABLES for the interface and buttons
int handleX, handleY;     // Position of button area
int handleSizeX = 60;     // Width of button 
int handleSizeY = 180;    // Height of button
color backgroundColor, rectColor, baseColor, rectHighlight, rectPressed, currentColor;
boolean handleOver = false;
int textX = 395;
int ellipseY;
int handleStickY;

// CLASSES
avatar avatar1, avatar2;
avatarfrog frog1, frog2;


//avatarHEAD avatarH1, avatarH2;
float pixelSize = 5;
int margin = 20;
int index = int(random(5)); 
float moveX1= 21;
float moveX2= 20;
float speedX1= 10;
float speedX2= 20;


void setup() {
  size (600, 300);
  background (60);
  noStroke();
  smooth();
  //frameRate(10);

  avatar1 = new avatar(22, 120); 
  frog1 = new avatarfrog(30, 120);
  avatar2 = new avatar(22, 120);
}

void draw() {
  drawInterface();
  //drawText();
  moveX1 += speedX1;
  moveX2 += speedX2;
  avatar1.colour(255, 0, 210);
  avatar1.startingX= moveX1;
  avatar1.displayhead();

  frog1.startingX= moveX2; 
  frog1.displayhead();

  avatar1.startingX= 250-moveX1;
  avatar1.displaybody();

  frog1.startingX= 250-moveX2;
  frog1.displaybody();


  if (moveX1>= 220 || moveX1 <= 21) {
    speedX1 = speedX1*-1;
  }
  if (moveX2>= 220 || moveX2 <= 20) {
    speedX2 = speedX2*-1;
  }
}


void keyPressed() {
  //println("(x,y)="+"("+mouseX + ","+mouseY+")");
}


class avatar {
  float startingX;
  float startingY;
  float a, b, c;
  avatar(float x, float y) {
    startingX = x;
    startingY = y;
  }
  
  void colour(float x, float y, float z) { //255 0 210
    a = x;
    b = y;
    c = z;
  }

  void displaybody() {
    //BODY
    fill (255, 76, 5);
    fill(random(0, 255), random(0, 255), random(0, 255));
    rect (startingX + 4 * pixelSize, startingY + 13 * pixelSize, 6 * pixelSize, 4 * pixelSize);

    //arms
    fill (178, 50, 0);
    fill(random(0, 255), random(0, 255), random(0, 255));
    rect (startingX + 3 * pixelSize, startingY + 13 * pixelSize, pixelSize, pixelSize);
    rect (startingX + 10 * pixelSize, startingY + 13 * pixelSize, pixelSize, pixelSize);
    //pants
    rect (startingX + 4 * pixelSize, startingY + 17 * pixelSize, 6 * pixelSize, pixelSize);

    //wrists
    fill (0);
    fill(random(0, 255), random(0, 255), random(0, 255));
    rect (startingX + 3 * pixelSize, startingY + 14 * pixelSize, pixelSize, pixelSize);
    rect (startingX + 10 * pixelSize, startingY + 14 * pixelSize, pixelSize, pixelSize);

    //hands
    fill (255, 213, 170);
    fill(random(0, 255), random(0, 255), random(0, 255));
    rect (startingX + 3 * pixelSize, startingY + 15 * pixelSize, pixelSize, pixelSize);
    rect (startingX + 10 * pixelSize, startingY + 15 * pixelSize, pixelSize, pixelSize);

    //feet
    fill (70);
    fill(random(0, 255), random(0, 255), random(0, 255));
    rect (startingX + 4 * pixelSize, startingY + 18 * pixelSize, 2 * pixelSize, pixelSize);
    rect (startingX + 8 * pixelSize, startingY + 18 * pixelSize, 2 * pixelSize, pixelSize);

    //tie
    fill (255);
    fill(random(0, 255), random(0, 255), random(0, 255));
    rect (startingX + 6 * pixelSize, startingY + 13 * pixelSize, pixelSize, 3 * pixelSize);

    //badge
    fill (51, 1, 106);
    fill(random(0, 255), random(0, 255), random(0, 255));
    rect (startingX + 8 * pixelSize, startingY + 14 * pixelSize, pixelSize, pixelSize);
  }
  
  void displayhead() {
    //helmet
    //white
    fill (a);
    fill(random(0, 255), random(0, 255), random(0, 255));
    rect (startingX + 2 * pixelSize, startingY + 2 * pixelSize, 9 * pixelSize, 10 * pixelSize);
    rect (startingX + 1 * pixelSize, startingY + 3 * pixelSize, pixelSize, 8 * pixelSize);
    rect (startingX, startingY + 4 * pixelSize, pixelSize, 6 * pixelSize);
    rect (startingX + 11 * pixelSize, startingY + 4 * pixelSize, pixelSize, 7 * pixelSize);

    //black
    fill (b);
    fill(random(0, 255), random(0, 255), random(0, 255));
    rect (startingX + 2 * pixelSize, startingY + 4 * pixelSize, 8 * pixelSize, 7 * pixelSize);
    rect (startingX + 1 * pixelSize, startingY + 5 * pixelSize, 10 * pixelSize, 5 * pixelSize);

    //helmet shadows
    fill (c); 
    fill(random(0, 255), random(0, 255), random(0, 255));
    rect (startingX, startingY + 10 * pixelSize, pixelSize, pixelSize);
    rect (startingX + 1 * pixelSize, startingY + 11 * pixelSize, pixelSize, pixelSize);
    rect (startingX + 11 * pixelSize, startingY + 3 * pixelSize, pixelSize, pixelSize);
    rect (startingX + 11 * pixelSize, startingY + 11 * pixelSize, pixelSize, pixelSize);
    rect (startingX + 12 * pixelSize, startingY + 4 * pixelSize, pixelSize, 7 * pixelSize);
    //reflection
    rect (startingX + 3 * pixelSize, startingY + 5 * pixelSize, 4 * pixelSize, pixelSize);
    rect (startingX + 2 * pixelSize, startingY + 6 * pixelSize, pixelSize, pixelSize);
  }
}

class avatarfrog {
  float startingX; //30
  float startingY; //110
  float a, b, c;

  avatarfrog(float x, float y) {
    startingX = x;
    startingY = y;
  }

  void colour(float x, float y, float z) { //255 0 210
    a = x;
    b = y;
    c = z;
  }

  void displaybody() {
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
  void displayhead() {
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
  }
}



void drawInterface() {
  background (backgroundColor);
  
  /* 
   draw background for comic strips might remove them later,
   or just place the images over this
   */
  noFill();
  strokeWeight(2);
  stroke(90);
  rect(margin, margin, 270, 160, 10); 
  rect(margin, margin + 160, 270, 100, 10);

  // draw the text area background
  fill(90);
  rect(380, 0, 250, 300, 10);

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
        ellipseY = 189;
        handleStickY = 135;
     }
  } 
  else {
    fill(rectColor);
    cursor(ARROW);
      ellipseY = 95;
      handleStickY = 96;
  }

  rect(handleX, handleY, handleSizeX, handleSizeY, 10);

  noStroke();
  fill (70);
  
  noStroke();
  // handle backplate
  fill (0);
  rect(325, 83, 20, 115);
  // down Handle
  fill(160);
  rect(332, handleStickY, 6, 52);
  fill(250, 255, 0);
  ellipse(335, ellipseY, 15, 15);
  
   
}


void update(int x, int y) {
  if ( overRect(handleX, handleY, handleSizeX, handleSizeY) ) {
    handleOver = true;
  } 
  else {
    handleOver = false;
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

void mousePressed() {
  if (mouseX >= 310 && mouseX <= 600 && mouseY >= 25 && mouseY<= 300) {
    moveX1= random(21, 220);
    moveX2= abs(moveX1- 255);
    background(60);
    drawInterface();
    drawText();
    avatar1.startingX = moveX1;
    avatar1.displaybody();
    avatar1.displayhead();
    frog1.displaybody();
    frog1.displayhead();
    noLoop();
  }

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

  loop();
  int indexTemp = int(random(5));  
  index = indexTemp;


  if (handleOver) {
    currentColor = rectColor;
    println("released while over");
    ellipseY = 95;
    handleStickY = 96;
  }
  else {
    println("released elsewhere");
  }
}


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
  String mDescription1 = "I'm a monster couple with character, and lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris";
  String mDescription2 = "I'm not what you might think, but maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris";
  String mDescription3 = "If you want 3 of them, get the secret key and then ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris";
  String mDescription4 = "4 is a magical number, right? For sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacus nulla, molestie nec bibendum nec, ultrices sed mauris";
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


