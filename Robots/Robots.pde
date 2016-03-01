int scene = 1;
void setup() {
  //make canvas
  size(1000, 700);
}
void draw() {
  background(100);
  if (scene == 1)
  {
    int minionX = 325;
    int minionY = 275;
    TMRobots minionbot = new TMRobots();
    //minionbot.drawAt(0,0,1,1);
    int counter = 0;
    while (counter < 3) {

      // draw the timBot

      minionbot.drawAt(minionX + counter * 115, 400 - counter, 0.7, 0.7);

      //make minions speech bubble
      fill(255);
      ellipse(500, 325, 400, 80);
      fill(0);
      textSize(16);
      textAlign(CENTER);
      text("we must find a master!", minionX + 175, minionY + 50);
      fill(255, 0, 0);
      textSize(32);
      textAlign(TOP);
      text("MINIONS SCENE ONE", 375, 100);


      // must increment counter so the condition that ends the loop will occur
      counter += 1;
      fill(255);
      rect(0, 650, 1000, 50);
      fill(0);
      textAlign(CENTER);
      textSize(16);
      text("Minions purpose is to serve a master. They are now searching for their next master to serve.", 400, 680);
    }
  } else if (scene == 2)
  {
    int minionX =635;
    int minionY = 275;
    int scarletX =325;
    int scarletY = 275;
    TMRobots minionbot = new TMRobots();
    //minionbot.drawAt(0,0,1,1);
    int counter = 0;
    while (counter < 3)

    {

      fill(255, 0, 0);
      textSize(48);
      text("MINIONS SCENE TWO ", 500, 50);
      EPRobot scarletbot = new EPRobot();
      scarletbot.drawAt(200, 80, 1, 1);


      // draw the timBot

      minionbot.drawAt(minionX + counter * 115, 480 - counter, 0.7, 0.7);
      counter += 1;
      //scarlets speech bubble
      fill(255);
      ellipse(725, 100, 400, 80);
      fill(0);
      textSize(16);
      textAlign(CENTER);
      text("My name is Scarlet and I am your master now!", scarletX + 400, scarletY - 175);
      fill(255);
      rect(0, 650, 1000, 50);
      fill(0);
      textAlign(CENTER);
      textSize(16);
      text("Scarlet Overkill becomes the Minion's Master as the Minions look to serve her.", 400, 680);
    }
  } else if (scene == 3)
  {
    int minionX =735;
    int minionY = 275;
    int scarletX =325;
    int scarletY = 275;
    TMRobots minionbot = new TMRobots();
    //minionbot.drawAt(0,0,1,1);
    int counter = 0;
    while (counter < 3)

     
    {
          
      fill(255, 0, 0);
      textSize(48);
      text("MINIONS SCENE THREE ", 500, 50);
    
    EPRobot scarletbot = new EPRobot();
    scarletbot.drawAt(200, 80, 1, 1);
    
    
    minionbot.drawAt(minionX + counter * 115, 480 - counter, 0.7, 0.7);
 counter+=1;
fill(255);
      ellipse(725, 100, 400, 80);
      fill(0);
      textSize(16);
      textAlign(CENTER);
      text("I must terminate all Minions!", scarletX + 400, scarletY - 175);
      fill(255);
      rect(0, 650, 1000, 50);
      fill(0);
      textAlign(CENTER);
      textSize(16);
      text("To be Continued...", 400, 680);

    }
    }
}
void keyPressed() 
{ 
  scene +=1;
}