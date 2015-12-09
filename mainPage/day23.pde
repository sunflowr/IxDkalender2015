int moonSize = 500;
int moonYPos = -100;
void day23(){
  // Månen blir avsevärt större. Marschaller tänds.
  image(moon,300,moonYPos,moonSize,moonSize);
  if(moonSize < 600)
  {
   moonSize = moonSize + 1; 
   
  }
  
  
  
}