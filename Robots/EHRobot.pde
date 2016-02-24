class EHRobot {

  // Constructor for class
  // MUST have name identical to name of the class (above)
  // This is a function (a.k.a a method) that is run once, like setup()
  void EHRobot() {
  }


  // Purpose: To draw my robot at the specified location
  // Parameters:
  //          xAnchor      horizontal position, top-left
  //          yAnchor      vertical position, top-left
  void drawAt(int xAnchor, int yAnchor, float horizontalScale, float verticalScale) {  
    noStroke();
    fill(255, 0, 0);
    rect(xAnchor + 200 * horizontalScale, yAnchor + 200 * verticalScale, horizontalScale * 200, verticalScale * 200);


    rect(xAnchor + 225 * horizontalScale, yAnchor + 120 * verticalScale, 40 * horizontalScale, verticalScale * 80);
    rect(xAnchor + 335 * horizontalScale, yAnchor + 120 * verticalScale, 40 * horizontalScale, verticalScale * 80);
    fill(255);
    rect(xAnchor + 225 * horizontalScale, yAnchor + 300 * verticalScale, 150 * horizontalScale, verticalScale * 50);
    fill(255, 200, 200);
    fill(0);
    ellipse( xAnchor + 245 * horizontalScale, yAnchor + 150 * verticalScale, 25 * horizontalScale, verticalScale * 25);
    ellipse(xAnchor + 355 * horizontalScale, yAnchor + 150 * verticalScale, 25 * horizontalScale, verticalScale * 25);
    rect(xAnchor + 285 * horizontalScale, yAnchor + 250 * verticalScale, 30 * horizontalScale, verticalScale * 30);
    stroke(0);

    line(xAnchor + 250 * horizontalScale, yAnchor + 300 * verticalScale, xAnchor + 250 * horizontalScale, yAnchor + 350 * verticalScale);
    line(xAnchor + 275 * horizontalScale, yAnchor +  300 * verticalScale, xAnchor + 275 * horizontalScale, yAnchor +  350 * verticalScale);
    line(xAnchor + 300 * horizontalScale, yAnchor + 300 * verticalScale, xAnchor + 300 * horizontalScale, yAnchor + 350 * verticalScale);
    line(xAnchor + 325* horizontalScale, yAnchor +  300 * verticalScale, xAnchor + 325 * horizontalScale, yAnchor +  350 * verticalScale);
    line(xAnchor + 350 * horizontalScale, yAnchor + 300 * verticalScale, xAnchor + 350 * horizontalScale, yAnchor + 350 * verticalScale);
    noStroke();
    fill(0, 0, 255);
    rect(xAnchor + 325 * horizontalScale, yAnchor + 400 * verticalScale, 40 * horizontalScale, verticalScale * 50);
    rect(xAnchor + 235 * horizontalScale, yAnchor + 400 * verticalScale, 40 * horizontalScale, verticalScale * 50);
    fill(0, 0, 255);
    rect(xAnchor + 100 * horizontalScale, yAnchor + 235 * verticalScale, 100 * horizontalScale, verticalScale * 50);
    rect(xAnchor + 400 * horizontalScale, yAnchor + 235 * verticalScale, 100 * horizontalScale, verticalScale * 50);
  }
}