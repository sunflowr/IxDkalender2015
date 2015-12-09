PImage santa2;
int xPossanta2 = 1800;
int yPossanta2 = 875;

void day18() {
  if(isHatchOpen(18) && xPosBear>-700){
    image(santa2,xPossanta2, yPossanta2,200,200);
        xPossanta2 = xPossanta2-2;
    yPossanta2 = yPossanta2-1;
    if(yPossanta2 < 870) {
      yPossanta2 = yPossanta2+15;
    }
    if(xPossanta2 < 870) {
      xPossanta2 = 870;
      yPossanta2 = 875;
    }
  }
}