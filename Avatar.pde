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

