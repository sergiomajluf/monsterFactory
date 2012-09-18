void drawInterface() {
  fill(90);
//test
  /* 
   draw background for comic strips
   might remove them later, or just place the images
   over this
   */
   noFill();
  rect(margin, margin, 270, 160); 
 // rect(margin, margin + 90, 270, 80); 
  rect(margin, margin + 160, 270, 100);

fill(90);
  // draw the text area background
  rect(400, 0, 200, 300);

  // draw area behind buttons
  noFill();
  strokeWeight(2);
  stroke(90);
  rect(275 + margin*2, margin + 10, 60, 180); 
//  rect(275 + margin*2, margin + 100, 60, 60); 
//  rect(275 + margin*2, margin + 190, 60, 60);
}


