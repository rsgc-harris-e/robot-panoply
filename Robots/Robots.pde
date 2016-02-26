void setup() {
  //make canvas
  size(1000, 700);
}
void draw() {
  background(100);
  int minionX= 
    TMRobots minionbot = new TMRobots();
  //minionbot.drawAt(0,0,1,1);
  int counter = 0;
  while (counter < 8) {

    // draw the timBot

    minionbot.drawAt(0 + counter * 115, 400 - counter, 0.7, 0.7);

    // must increment counter so the condition that ends the loop will occur
    counter += 1;
  }
}