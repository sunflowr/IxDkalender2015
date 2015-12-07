boolean grid(int x, int y, int _width, int _height) {
  if (mouseX>x && mouseY>y &&mouseX<x+_width && mouseY<y+_height) {
    return true;
  } else {
    return false;
  }
}
void fix() {
  if ( mousePressed == true) {
    if (grid(100, 920, _width, _height)) {
      test = true;
    }
  }
}
void mouse() {
  if (test == true) {
    if (i>100) {
      bigger = -1;
      star(100, 920, _width, _height);
    } else {
      star(100, 920, _width, _height);
    }
  }
}
void star(int x, int y, int _width, int _height) {
  fill(255, 255, 0, 0+3*i);
  ellipse(x+_width/2, y+_height/2, 10+i, 10+i);
  i = i + bigger;
}