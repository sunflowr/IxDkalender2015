
//dag 2
void day2()
{
  fill(255);
  text("2", 135, 963);
  stroke(255);
  noFill();
  rect(100, 920, _width, _height);
  noStroke();
  //Ellipse when door opens
  if ( smoke1 == true) {
   
    smoke(70);
    smoke2(30);
    smoke3(10);
    smoke4(40);
  }

}