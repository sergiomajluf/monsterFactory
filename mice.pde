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


