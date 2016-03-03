int scene = 1;
PImage bg;
PImage bg2;
PImage bg3;
PImage bg4;
PImage end;
int y;
PImage minionstext;
PFont font;
void setup() {
  //make canvas
  size(1000, 700);
  //load first picture background
  bg = loadImage("minions.jpg");
  bg.resize(1000, 700);
  //load second picture background
  bg2 = loadImage("supremelondon.jpg");
  bg2.resize(1000, 700);
  bg3 = loadImage("stage.jpeg");
  bg3.resize(1000, 700);
  bg4 = loadImage("londonstreet.jpg");
  bg4.resize(1000, 700);
  end = loadImage("end.jpeg");
  end.resize(1000, 700);
  //load minions title
  minionstext = loadImage("minionstext.png");
  font = createFont("Zorque.ttf", 100);
}
void draw() {
  //draw background
  background(bg);
  if (scene == 1)
  {  
    fill(0);
    textFont(font);
    textSize(20);
    text("By Eli Harris", 850, 50);
    //position of minions text
    image(minionstext, 300, 150);
  } else if (scene == 2)
  { 
    //draw second background
    background(bg2);
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
      textSize(14);
      text("Minions purpose is to serve a master, they find themselves lost in London. They are now searching for their next master to serve.", 500, 680);
    }
  } else if (scene == 3)
  {
    background(bg3);
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
  } else if (scene == 4)
  {
    background(bg4);
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
      stroke(1);
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
      text("The minions didn't give the crown back to scarlet which resulted in her getting very angry.", 400, 680);
      //make crown
      noStroke();
      fill(212, 175, 55);
      rect(750, 425, 150, 50);
      triangle(750, 425, 780, 425, 750, 375);
      triangle(900, 425, 870, 425, 900, 375);
      triangle(800, 425, 850, 425, 825, 375);
      fill(50, 205, 50);
      ellipse(760, 415, 15, 15);
      fill(255, 255, 0);
      ellipse(890, 415, 15, 15);
      fill(255, 0, 0);
      ellipse(825, 415, 20, 20);
      fill(0, 0, 255);
      ellipse(765, 450, 20, 20);
      ellipse(795, 450, 20, 20);
      ellipse(825, 450, 20, 20);
      ellipse(855, 450, 20, 20);
      ellipse(885, 450, 20, 20);
    }
  } else if (scene == 5)
  { 
    background(end);
    fill(0);
    textFont(font);
    textAlign(CENTER);
    text("To be continued...", 500, 100);
  }

  print(frameCount);
  if (frameCount % 180 == 0) {
    scene +=1;
  }
  saveFrame("eli-####.png");
}

void keyPressed() 
{
}