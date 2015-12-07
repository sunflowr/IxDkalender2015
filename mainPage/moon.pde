  int i = 1;

void moon() {
  i++;
  image(moon,width/5,-100,500,500);
  fill(0,0,0,255-i);
  rect(width/5,-100,500,500);
}