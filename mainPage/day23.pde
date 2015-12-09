float moonSize = 500;
float moonYPos = -50;
float moonXPos = 300;
void day23(){
  // Månen blir avsevärt större. Marschaller tänds.
  image(moon,moonXPos,moonYPos,moonSize,moonSize);
  if(moonSize < 750)
  {
  moonSize = moonSize + 1;
  moonYPos = moonYPos -0.5;
  moonXPos = moonXPos -0.5;
   
  }
  
  
  
  
}