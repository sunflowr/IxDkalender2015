PImage lanternImage;
int lanternsPosX[] = {
  40, 100, 300
};
int lanternsPosY[] = {
  60, 90, 20
};
float lanternsStrength[] = {
  0.1, 0.0, 0.1
};

void drawLantern(int x, int y, float lightStrength)
{
  int fireCenterX = x + 87;
  int fireCenterY = y + 100;
  int fireGlowSize = 100;

  // Draw glow.
  fill(lightStrength * 255, lightStrength * 255, 0, 100);
  ellipse(fireCenterX, fireCenterY, (lightStrength * fireGlowSize), (lightStrength * fireGlowSize));
  
  // Draw lantern.
  image(lanternImage, x, y);

  // Draw fire.
  fill(lightStrength * 255, lightStrength * 255, 0, 100);
  ellipse(fireCenterX, fireCenterY, (lightStrength * (fireGlowSize / 2)), (lightStrength * (fireGlowSize / 2)));
  fill(lightStrength * 255, lightStrength * 255, 0);
  ellipse(fireCenterX, fireCenterY + 3, 10, 17);
}

boolean isDay8Initialized = false;
void initDay8()
{
  lanternImage = loadImage("lantern.png");
}

void day8()
{
  if(!isDay8Initialized)
  {
    initDay8();
    isDay8Initialized = true;
  }

  for(int i = 0; i < lanternsPosX.length; i++)
  {
    drawLantern(lanternsPosX[i], lanternsPosY[i], lanternsStrength[i] + random(-0.03, 0.03));
    if(lanternsStrength[i] < 0.9)
    {
      lanternsStrength[i] += 0.02;
    }
  }
}