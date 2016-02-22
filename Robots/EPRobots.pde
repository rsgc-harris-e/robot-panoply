class EPRobot {
//integers to store values for the rectangle making up the robots torso
   float tx = 195;
   float ty = 100;
   float tWidth = 200;
   float tHeight = 300;
   //ints for cordinates of the robots head
   float hx = tx + tWidth/2 + 5;
   float hy = 152;
   float hDiameter = 75;
   //ints for eye cordinates
   float ex = 280;
   float ey = 55;
   float eDiameter = 15;
   //ints for mouth
   float mx = 275;
   float my = 70;
   float mWidth = 50;
   float mHeight = 10;
   // ints for arms
   float ax = 165;
   float ay = 125;
   float aWidth = 30;
   float aHeight = 240;
   //ints for legs
   float lx = tx + aWidth + 83;
   float ly = ty + tHeight;
   float lWidth = tWidth/4;
   float lHeight = tHeight/2;
   //ints for feet
   float fx = lx + lWidth/2;
   float fy = ly + lHeight + lWidth/2 - 10;
   float fDiamter = lWidth;


 void EPRobot() {/* Nothing to construct */}

   void drawAt(int x, int y, float horizontalScale, float verticalScale) {
    fill(255, 0, 213);
    //draw cape at the beginning to layer it behind the other shapes
    rect(x + tx*horizontalScale, y + ty*verticalScale, tWidth*horizontalScale, (tHeight*2 - lHeight)*verticalScale);
    fill(255);
    rect(x + (tx*horizontalScale), y + (ty * verticalScale), tWidth*horizontalScale, tHeight*verticalScale);
    ellipse(x + hx*horizontalScale, y + (hy - 90)*verticalScale, hDiameter*horizontalScale, hDiameter*verticalScale);
    fill(0); //make eyes for the robot that will be the color black
    ellipse(x + ex*horizontalScale, y + ey*verticalScale, eDiameter*horizontalScale, eDiameter*verticalScale);
    // draw other eye
    ellipse(x + (ex + 40)*horizontalScale, y + ey*verticalScale, eDiameter*horizontalScale, eDiameter*verticalScale);
    //draw mouth
    fill(209);
    rect(x + mx*horizontalScale, y + my*verticalScale, mWidth*horizontalScale, mHeight*verticalScale);
    // draw lines in the mouth creating the old school boxy robot look
    line(x + (mx + 8)*horizontalScale,  y + my*horizontalScale, x + (mx + 8)*horizontalScale, y + (my + mHeight)*verticalScale);
    line(x + (mx + 12)*horizontalScale, y + my*verticalScale, x +(mx + 12)*horizontalScale, y + (my + mHeight)*verticalScale);
    line(x + (mx + 16)*horizontalScale, y + my*verticalScale, x + (mx + 16)*horizontalScale, y + (my + mHeight)*verticalScale);
    line(x + (mx + 20)*horizontalScale, y + my*verticalScale, x + (mx + 20)*horizontalScale, y + (my + mHeight)*verticalScale);
    line(x + (mx + 24)*horizontalScale, y + my*verticalScale, x + (mx + 24)*horizontalScale, y + (my + mHeight)*verticalScale);
    line(x + (mx + 28)*horizontalScale, y + my*verticalScale, x + (mx + 28)*horizontalScale, y + (my + mHeight)*verticalScale);
    line(x + (mx + 32)*horizontalScale, y + my*verticalScale, x + (mx + 32)*horizontalScale, y + (my + mHeight)*verticalScale);
    line(x + (mx + 36)*horizontalScale, y + my*verticalScale, x + (mx + 36)*horizontalScale, y + (my + mHeight)*verticalScale);
    line(x + (mx + 40)*horizontalScale, y + my*verticalScale, x + (mx + 40)*horizontalScale, y + (my + mHeight)*verticalScale);
    line(x + (mx + 44)*horizontalScale, y + my*verticalScale, x + (mx + 44)*horizontalScale, y + (my + mHeight)*verticalScale);
    //draw arms
    fill(209);
    rect(x + ax*horizontalScale, y + (ay - 5)*verticalScale, aWidth*horizontalScale, aHeight*verticalScale); // left arm
    rect(x + (ax + aWidth + tWidth)*horizontalScale, y + (ay - 5)*verticalScale, aWidth*horizontalScale, aHeight*verticalScale); // right Arm
    // draw Iron Man type circle in the middle
    fill(255, 174, 0);
    ellipse(x + (tx + tWidth/2)*horizontalScale, y + (ty + 50)*verticalScale, (hDiameter - 25)*horizontalScale, (hDiameter - 25)*verticalScale);
    ellipse(x + (tx + tWidth/2 - 65)*horizontalScale, y + (ty + 50)*verticalScale, (hDiameter/2 - 10)*horizontalScale, (hDiameter/2 - 10)*verticalScale);
    ellipse(x + (tx + tWidth/2 + 65)*horizontalScale, y + (ty + 50)*verticalScale, (hDiameter/2 - 10)*horizontalScale, (hDiameter/2 - 10)*verticalScale);
    //draw feet
    ellipse(x + fx*horizontalScale, y + fy*verticalScale, fDiamter*horizontalScale, fDiamter*verticalScale);
    noStroke();
    fill(255);
    rect(x + (fx - fDiamter)*horizontalScale, y + (ly + lHeight + 22)*verticalScale, hDiameter*horizontalScale, hDiameter*verticalScale);
    fill(0);
    stroke(5);
    line(x + (fx - fDiamter + 26)*horizontalScale, y + (ly + lHeight + 22)*verticalScale, x + (fx - fDiamter + 24 + fDiamter)*horizontalScale, y + (ly + lHeight + 22)*verticalScale); //draw line where the rect overlaps circle to give the impression of a semicircle with a stroke around it
    // draw left foot
    fill(255, 174, 0);
    ellipse(x + (fx - 75)*horizontalScale, y + (ly + lHeight + fDiamter/2 - 10)*verticalScale, fDiamter*horizontalScale, fDiamter*verticalScale);
    fill(255);
    noStroke();
    rect(x + (fx - 75 - fDiamter)*horizontalScale, y + (ly + lHeight + fDiamter/2 - 3)*verticalScale, (hDiameter + 3)*horizontalScale, fDiamter*verticalScale);
    stroke(5);
    fill(0);
    line(x + (fx - 100)*horizontalScale, y + (ly + lHeight + fDiamter/2 - 4)*verticalScale, x + (fx - 50)*horizontalScale, y + (ly + lHeight + fDiamter/2 - 4)*verticalScale);
    //draw legs
    stroke(5);
    fill(209);
    rect(x + lx*horizontalScale, y + ly*verticalScale, (tWidth/4)*horizontalScale, (tHeight/2)*verticalScale); //left leg
    rect(x + (lx - aWidth - 45)*horizontalScale,  y + ly*verticalScale, lWidth*horizontalScale, lHeight*verticalScale); //right leg
    //draw shoulders
    fill(255, 0, 213);
    triangle(x + (ax + aWidth)*horizontalScale, y + (ty + aWidth)*verticalScale, x + (tx + tWidth/4)*horizontalScale, y + ty*verticalScale, x + tx*horizontalScale,  y + ty*verticalScale); //left
    triangle(x + (tx + tWidth)*horizontalScale, y + ty*verticalScale, x + (tx + tWidth)*horizontalScale, y + ay*verticalScale, x + (tx + tWidth - tWidth/4)*horizontalScale,  y + ty*verticalScale); //right
   }
}
