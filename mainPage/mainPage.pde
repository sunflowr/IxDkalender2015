PImage backGroundImage;
int rainColor = 255;
int numOfDrops = 100;
Snow[] _snow = new Snow[numOfDrops];

//Door open variables
int elThick = 5;
int _width = 75;
int _height = 75;
int time = 0;
int timer;
int count = 0;
int count2 = 0;
boolean test = false;
int bigger = 1;

//snow variables
float _starSize = 0;
float growth = 1;
//Moon image
PImage moon;

// smoke variables 
int m2;
void setup()
{
  size(1920, 1080, P2D);
  backGroundImage = loadImage("background.png");
  santa = loadImage("santa.png");
  moon =   loadImage("moon.png");
  for (int i = 0; i < _snow.length; i++)
  {
    _snow[i] = new Snow();
  }
}
void draw()
{
  timer = millis();
  m2 = millis();
  image(backGroundImage, 0, 0, width, height);
   moon();

  tint(255, 150);
  noTint();
  santaWalking();
  fix();
  mouse();
  noStroke();
  
  
  // Stjärnor
  _createStars();
  
  
  //Ellipse when door opens
  fix();
  fill(255);
  rect(100, 920, _width, _height);
  smooth();
  
  // Day 1 Snow
  for (int i = 0; i < _snow.length; i++)
  {
    _snow[i].circle();
  }
 
  
  // Dag 10 Smoke
  smoke(70);
  smoke2(30);
  smoke3(10);
  smoke4(40);
}