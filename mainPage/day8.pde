boolean isDay8Initialized = false;
boolean isDay8Open = true;

PImage lanternImage;
int lanternsPosX[] = {
  140, 600, 1300
};
int lanternsPosY[] = {
  160, 300, 400
};
float lanternsRotation[] = {
  0.0, -0.1, 0.2
};
float lanternsStrength[] = {
  0.1, 0.0, 0.1
};

// Draw a single lantern.
void drawLantern(int x, int y, float rotation, float lightStrength)
{
  int fireCenterX = 87;
  int fireCenterY = 100;
  int fireGlowSize = 100;

  pushMatrix();

  translate(x, y);
  rotate(rotation);

  // Draw lantern.
  image(lanternImage, 0, 0);

  // Draw glow.
  if(lightStrength > 0.0)
  {
    fill(lightStrength * 255, lightStrength * 255, 0, 50);
    ellipse(fireCenterX, fireCenterY, (lightStrength * fireGlowSize), (lightStrength * fireGlowSize));
    ellipse(fireCenterX, fireCenterY, (lightStrength * (fireGlowSize / 2)), (lightStrength * (fireGlowSize / 2)));
  
    // Draw fire.
    fill(lightStrength * 255, lightStrength * 255, 0);
    ellipse(fireCenterX, fireCenterY + 3, 10, 17);
  }
  
  popMatrix();
}

// Initializes day 8 - only run once.
void initDay8()
{
  lanternImage = loadImage("lantern.png");
}

// Day 8 main code.
void day8()
{
  // Initialize the day on first run.
  if(!isDay8Initialized)
  {
    initDay8();
    isDay8Initialized = true;
  }

  // Draw the lanterns.
  for(int i = 0; i < lanternsPosX.length; i++)
  {
    // Calculate strength of fire for the lantern.
    float lanternStrength = 0.0f;
    if(isDay8Open)
    {
      lanternStrength = lanternsStrength[i] + random(-0.03, 0.03);

      // Make the fire grow when lantern is being lit up. 
      if(lanternsStrength[i] < 0.9)
      {
        lanternsStrength[i] += 0.02;
      }
    }

    // Draw the lantern.
    drawLantern(lanternsPosX[i], lanternsPosY[i], lanternsRotation[i], lanternStrength);
  }
}