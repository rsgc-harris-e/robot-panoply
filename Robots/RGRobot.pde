class RGRobot {

  // Constructor for class
  // MUST have name identical to name of the class (above)
  // This is a function (a.k.a a method) that is run once, like setup()
  void RGRobot() {
  }


  // Purpose: To draw my robot at the specified location
  // Parameters:
  //          xAnchor      horizontal position, top-left
  //          yAnchor      vertical position, top-left
  void drawAt(int xAnchor, int yAnchor, float horizontalScale, float verticalScale) {
    
    // Draw head
    fill(255);
    ellipse(xAnchor + 200 * horizontalScale, yAnchor + 100 * verticalScale, 100 * horizontalScale, 100 * verticalScale);
  
    // Draw vision bar (eye)
    rectMode(CENTER);
    fill(225);
    rect(xAnchor + 200 * horizontalScale, yAnchor + 85 * verticalScale, 50 * horizontalScale, 15 * verticalScale);
  
    // Draw body
    fill(200);  // grey
    arc(xAnchor + 200 * horizontalScale, yAnchor + 400 * verticalScale, 300 * horizontalScale, 600 * verticalScale, PI, TWO_PI);
    fill(245);  // light grey
    arc(xAnchor + 200 * horizontalScale, yAnchor + 400 * verticalScale, 300 * horizontalScale, 500 * verticalScale, PI, TWO_PI);
  
    // Side wheels
    fill(100); // darker grey
    ellipse(xAnchor + 60 * horizontalScale, yAnchor + 350 * verticalScale, 100 * horizontalScale, 100 * verticalScale); 
    ellipse(xAnchor + 340 * horizontalScale, yAnchor + 350 * verticalScale, 100 * horizontalScale, 100 * verticalScale);
    
    // Complete body bottom
    line(xAnchor + 60 * horizontalScale, yAnchor + 400 * verticalScale, xAnchor + 350 * horizontalScale, yAnchor + 400 * verticalScale); 
  
    // Add "front and back" wheel
    // (Back wheel is directly behind front wheel, so not visible when looking straight on)
    rectMode(CENTER);
    fill(100); // darker grey
    rect(xAnchor + 200 * horizontalScale, yAnchor + 350 * verticalScale, 20 * horizontalScale, 100 * verticalScale);
    rectMode(CORNER);
  
    // Leg down to front wheel
    fill(200);  // grey
    noStroke();
    quad(xAnchor + 185 * horizontalScale, yAnchor + 150 * verticalScale, xAnchor + 195 * horizontalScale, yAnchor + 300 * verticalScale, xAnchor + 205 * horizontalScale, yAnchor + 300 * verticalScale, xAnchor + 215 * horizontalScale, yAnchor + 150 * verticalScale);
    strokeWeight(1);
    stroke(0);
    line(xAnchor + 185 * horizontalScale, yAnchor + 150 * verticalScale, xAnchor + 195 * horizontalScale, yAnchor + 300 * verticalScale); // left side
    line(xAnchor + 205 * horizontalScale, yAnchor + 300 * verticalScale, xAnchor + 215 * horizontalScale, yAnchor + 150 * verticalScale); // right side
  
  }  
  
}