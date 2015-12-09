PImage polarbear;
PImage bloodsplatter;
int xPosBear = 1800;
int yPosBear = 675;

void day19() {
    if(isHatchOpen(19)){
    image(polarbear,xPosBear, yPosBear,700,402);
    xPosBear = xPosBear-2;
    yPosBear = yPosBear-1;
    if(yPosBear < 670) {
      yPosBear = yPosBear+15;
    }
    if(xPosBear <= 850) {
      image(bloodsplatter,800, 800 ,300,278);
    }
    
    }
}