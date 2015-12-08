void day4(){
     fill(255);
  text("4", 300, 500);
  stroke(255);
  noFill();
  rect(300, 500, _width, _height);
  noStroke();
  
  if(snowMore == true){
    
     for (int i = 0; i < _snow.length; i++)
  {
    _snow[i].circle();
    
  } 
   
  }
}