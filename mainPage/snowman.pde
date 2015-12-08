void _drawSnowman()
{
  if(timer > iniSnow + 2000)
  {
  fill(255);
 stroke(1);
 ellipse(1220, 640, 80, 80);
 noStroke();
  }
  if(timer > iniSnow + 3000)
  {
 image(snowman1, 1170, 540, 100, 70);
  }
 if(timer > iniSnow + 4000)
  {
 image(snowman2, 1200, 480, 50, 70); 
  }
}