int pixelSize = 20;
int startingX = 110;
int startingY = 110;

void setup() {
  size (500, 500);
  background (255);
  noStroke();
  frameRate(1);
}

void draw() {
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
