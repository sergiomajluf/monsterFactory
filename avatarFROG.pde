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



