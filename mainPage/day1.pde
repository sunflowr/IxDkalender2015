//Dag 1, 
void day1(){
    fill(255);
  text("1", 285, 990);
  stroke(255);
  noFill();
  rect(250, 950, _width, _height);
  noStroke();
  if(snowB == true){
     for (int i = 0; i < _snow.length; i++)
  {
    _snow[i].circle();
  } 
   
  }
}