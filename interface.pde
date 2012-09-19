void drawInterface() {
  background (backgroundColor);
  
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
  drawHandle();
  noStroke();
  fill (70);
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

void drawHandle() {
  if (!handleOver) {
    drawHandleOff();
  }  

  else if (handleOver) {
    drawHandleOff();
  } 
  else if (handleOver && mousePressed) {
    drawHandle();
  }
}
void drawHandleOff() {
  noStroke();
  // handle backplate
  rect(327, 85, 20, 115);
  fill (0);
  rect(325, 83, 20, 115);
  // up Handle
  fill(160);
  rect(332, 96, 6, 42);
  fill(250, 255, 0);
  ellipse(335, 95, 15, 15);
}


void drawHandleOver() {
  noStroke();
  // handle backplate
  fill (0);
  rect(325, 83, 20, 115);
  // down Handle
  fill(160);
  rect(332, 138, 6, 52);
  fill(250, 255, 0);
  ellipse(335, 189, 15, 15);
}

