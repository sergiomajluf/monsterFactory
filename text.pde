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

