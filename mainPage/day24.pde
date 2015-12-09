PImage santawithreindeers;
PImage godjul;
int xPosswreindeer = 1500;
int yPosswreindeer = 70;
int timeStart = timer;
int julTint = 1;

void day24(){
  image(santawithreindeers,xPosswreindeer,yPosswreindeer,250,138);
  xPosswreindeer = xPosswreindeer - 5;
  if(xPosswreindeer<=300)
    {
      julTint++;
      tint(255,julTint);
      image(godjul, 280, 70, 380, 194);
      noTint();
    }
}