PImage backGroundImage;
int rainColor = 255;
int numOfDrops = 100;
Snow[] _snow;
boolean snowMore = false;

//Door open variables
int elThick = 5;
int _width = 75;
int _height = 75;
int time = 0;
int timer;
int count = 0;
int count2 = 0;
boolean test1 = false;
boolean test2 = false;
int bigger = 1;
int is = 1;
boolean smoke1 = false;

//snow variables
float _starSize = 0;
float growth = 1;
boolean snowB = false;
//Moon image
PImage moon;

// smoke variables 
int m2;
//snowman
PImage snowman1;
PImage snowman2;
boolean showSnow = false;
int iniSnow = timer;
boolean open = false; //Open hatch or 



void setup()
{
  size(1920, 1080, P2D);
  backGroundImage = loadImage("background.png");
  santa = loadImage("santa.png");
  moon =   loadImage("moon.png");
  snowman1 = loadImage("snowman1.2.png");
  snowman2 = loadImage("snowman2.1.png");
  santawithreindeers = loadImage("santawithreindeers.png");
}


void draw()
{
  timer = millis();
  m2 = millis();
  image(backGroundImage, 0, 0, width, height);
  moon();

  Date(/*8*/); //Lägg ALLA luckor inom denna
  if (open == true) {
    println("OMG it's already");
    println(y+" "+m+" "+d); //insert function here
    println("I gotta get some presents!!!");
  } else {

    text("Don't open this yet", 50, 50); //Nån kul effekt ifall man inte kan öppna den här luckan
  }

  println(timer);
  tint(255, 150);
  noTint();
  santaWalking();
  noStroke();


  // Stjärnor
  _createStars();
  //day 1
  day1();
  day2();
  day3();
  day4();

  smooth();
}
void mouseClicked()
{
  //day 1
  if (grid(250, 950, _width, _height) == true)
  {
    numOfDrops = 10;
    _snow = new Snow[numOfDrops];
    for (int i = 0; i < _snow.length; i++)
    {
      _snow[i] = new Snow();
    }
    snowB = true;
  }

  //day2
  if (grid(100, 920, _width, _height)==true)
  {
    smoke1 = true;
  }

  //day 3
  if (grid(100, 100, _width, _height) == true)
  {
    showSnow = true;
    iniSnow = timer;
  }
  if (grid(300, 500, _width, _height) == true)
  {
    numOfDrops = 300;
    _snow = new Snow[numOfDrops];
    for (int i = 0; i < _snow.length; i++)
    {
      _snow[i] = new Snow();
    }
    snowMore = true;
    snowB = false;
  }
}