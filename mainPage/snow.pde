class Snow
{
  float snowX = random(-500,2000);
  float snowY = random(-2300);
  float snowX2 = random(-500,2000);
  float snowY2 = random(-2300);
  float snowX3 = random(-500,2000);
  float snowY3 = random(-2300);
  float snowX4 = random(2500);
  float snowY4 = random(-2300);
  float snowX5 = random(-500,2000);
  float snowY5 = random(-2300);



  void circle()
  {
    fill(255, 255, 255, 110);
    ellipse(snowX, snowY, 9, 9);
    fill(255, 255, 255, 85);
    ellipse(snowX2, snowY2, 7, 7);
    fill(255, 255, 255, 150);
    ellipse(snowX3, snowY3, 11, 11);
    fill(255, 255, 255, 100);
    ellipse(snowX4, snowY4, 9, 9);
    fill(255, 255, 255, 90);
    ellipse(snowX5, snowY5, 6, 6);

    snowX = snowX + 0.1;
    snowY = snowY +1;
    if (snowY>height)
    {
      snowX = random(2000);
      snowY = -200;
    }

    snowX2 = snowX2 + 0.3;
    snowY2 = snowY2 + 1.4;

    if (snowY2>height)
    {
      snowX2 = random(2000);

      snowY2 = -200;
    }

    snowX3 = snowX3 + 0.3;
    snowY3 = snowY3 + 1;
    if (snowY3>height)
    {
      snowX3 = random(2000);

      snowY3 = -200;
    }

    snowX4 = snowX4 -0.2;
    snowY4 = snowY4 + 1.4;

    if (snowY4>height)
    {
      snowX4 = random(2000);

      snowY4 = -200;
    }
    snowX5 = snowX5 -0.5;
    snowY5 = snowY5 + 1;

    if (snowY5>height)
    {
      snowX5 = random(2000);
      snowY5 = -200;
    }
  }
}