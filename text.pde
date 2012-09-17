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
  text("say hello to:", 420, 30); 
  text("I am a:", 420, 105); 

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
  text(mDescription[index], 420, 110, 160, 170);

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

  text(mName[index], 420, 60);
}

