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

