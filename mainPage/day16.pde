PImage santa;
int xPosSanta = -200;
int yPosSanta = 875;

void day16() {
  if(isHatchOpen(16)){
    image(santa,xPosSanta,yPosSanta,200,200);
    xPosSanta = xPosSanta+2;
    yPosSanta = yPosSanta-1;
    if(yPosSanta < 870) {
      yPosSanta = yPosSanta+15;
    } 
  }
    }