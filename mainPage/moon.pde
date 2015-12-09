  int i = 1;

void moon() {
  i++;
  image(moon,300,-50,500,500);
  fill(0,0,0,255-i);
  rect(width/5,-100,500,500);
  fill(2,2,0);
  ellipse(700,150,300,300);
}