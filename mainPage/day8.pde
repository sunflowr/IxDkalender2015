void drawLantern(int x, int y, float lightStrength)
{
  // Draw glow.
  fill(lightStrength * 255, lightStrength * 255, 0, 100);
  ellipse(x+25, y+25, 30 + (lightStrength * 50), 30 + (lightStrength * 50));

  // Draw lantern
  fill(255, 0, 0);
  rect(x, y, 50, 50);
  ellipse(x+25, y+10, 35, 35);
  fill(0, 0, 0);
  ellipse(x+25, y+25, 40, 40);
  fill(lightStrength * 255, lightStrength * 255, 0, 100);
  ellipse(x+25, y+25, 40, 40);
  
  // Draw fire.
  fill(lightStrength * 255, lightStrength * 255, 0);
  ellipse(x+25, y+28, 10, 17);
}

int lanternsPosX[] = {
  40, 100, 300
};
int lanternsPosY[] = {
  60, 90, 20
};
float lanternsStrength[] = {
  0.1, 0.0, 0.1
};

void day8()
{
  for(int i = 0; i < lanternsPosX.length; i++)
  {
    drawLantern(lanternsPosX[i], lanternsPosY[i], lanternsStrength[i] + random(-0.03, 0.03));
    if(lanternsStrength[i] < 0.9)
    {
      lanternsStrength[i] += 0.02;
    }
  }
}