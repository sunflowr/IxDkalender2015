PImage skier;
float scalar;
float move = 1;
float skiX;
float skiY;
float ski = 750;
void day7() {
  image(skier, ski+move, 500+move, 120, 120);
  move = move + 5;
  }