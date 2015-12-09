
PImage skier;
float scalar;
float move = 1;
float skiX;
float skiY;
float ski = 750;
void day7() {
  if(isHatchOpen(7)){
  image(skier, ski+move, 500+move, 120, 120);
  move = move + 5;
  }
  if (snowMore == true) {

    for (int i = 0; i < _snow.length; i++)
    {
      _snow[i].circle();
    }
  }
}