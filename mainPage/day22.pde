int[] day22starPosX;
int[] day22starPosY;
float[] day22starSize;
boolean isDay22Init = false;

void day22() {
  // Generate 40 more stars at random position.
  if(!isDay22Init)
  {
    day22starPosX = new int[40];
    day22starPosY = new int[40];
    day22starSize = new float[40];
    for(int i = 0; i < 40; i++)
    {
      day22starPosX[i] = (int)random(0, width);
      day22starPosY[i] = (int)random(10, 280);
      day22starSize[i] = random(1, 2);
    }
    isDay22Init = true;
  }

  if (isHatchOpen(22))
  {
    // Draw the stars.
    fill(255);
    for(int i = 0; i < 40; i++)
    {
      ellipse(day22starPosX[i], day22starPosY[i], _starSize * day22starSize[i], _starSize * day22starSize[i]);
    }
  }
}