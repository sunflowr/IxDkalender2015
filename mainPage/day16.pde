PImage santa;
int xPosSanta = 1800;

void santaWalking() {
    image(santa,xPosSanta,880,200,200);
    xPosSanta = xPosSanta-2;
    if(xPosSanta < 100){
      xPosSanta = 100;
    }
}