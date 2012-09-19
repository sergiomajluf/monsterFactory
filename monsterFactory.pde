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


