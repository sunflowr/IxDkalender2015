void fix() {
  if ( mousePressed == true) {
    if (grid(100, 920, _width, _height)) {
      test = true;
    }
  }
}
void mouse() {
  if (test == true) {
    if (grid(100, 920, _width, _height)) {
      doorOpen(100, 920, _width, _height);
    }
  }
}
boolean grid(int x, int y, int _width, int _height) {
  if (mouseX>x && mouseY>y &&mouseX<x+_width && mouseY<y+_height) {
    return true;
  } else {
    return false;
  }
}
void doorOpen(int x, int y, int _width, int _height) {
  for (int i = 0; i<10; i++) {
    fill(255);
    star(x, y, _width, _height - i*8);
  }
}
void star(int x, int y, int _width, int _height) {
  if (timer>time && count2<10) {
    ellipse(x-5*count, y+_height-pow(count, 2), elThick, elThick);
    time = timer + 5;
    count++;
    count2++;
  }
}