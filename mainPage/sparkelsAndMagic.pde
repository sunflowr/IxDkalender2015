PVector[] sparkelsAndMagicPos;
PVector[] sparkelsAndMagicVel;
PImage sparklesAndMagicImg;

void initSparkelsAndMagic()
{
  sparklesAndMagicImg = loadImage("star.png");
}

// Create particles
void createSparkelsAndMagic(int x, int y, int amount)
{
  sparkelsAndMagicPos = new PVector[amount];
  sparkelsAndMagicVel = new PVector[amount];
  for(int i = 0; i < sparkelsAndMagicPos.length; i++)
  {
    // Init particles.
    sparkelsAndMagicPos[i] = new PVector(x, y, 1.0);
    sparkelsAndMagicVel[i] = new PVector(random(-10.0, 10.0), random(-10.0, 10.0));
  }
}

// Update particles.
void updateSparkelsAndMagic()
{
  if(sparkelsAndMagicPos != null)
  {
    for(int i = 0; i < sparkelsAndMagicPos.length; i++)
    {
      if(sparkelsAndMagicPos[i].z > 0.0)
      {
        sparkelsAndMagicVel[i].y += 1.0;  
        sparkelsAndMagicPos[i].x += sparkelsAndMagicVel[i].x; 
        sparkelsAndMagicPos[i].y += sparkelsAndMagicVel[i].y;
        sparkelsAndMagicPos[i].z -= 0.01;
      }
    }
  }
}

// Draw particles.
void drawSparkelsAndMagic()
{
  if(sparkelsAndMagicPos != null)
  {
    for(int i = 0; i < sparkelsAndMagicPos.length; i++)
    {
      if(sparkelsAndMagicPos[i].z > 0.0)
      {
        tint(255, sparkelsAndMagicPos[i].z * 255);
        image(sparklesAndMagicImg, sparkelsAndMagicPos[i].x, sparkelsAndMagicPos[i].y, 20, 20);
        noTint();
      }
    }
  }
}