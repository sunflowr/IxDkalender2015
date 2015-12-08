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
boolean test1 = false;
boolean test2 = false;
int bigger = 1;
int is = 1;

//snow variables
float _starSize = 0;
float growth = 1;
boolean snowB = false;
//Moon image
PImage moon;

// smoke variables 
int m2;

boolean open = false; //Open hatch or 
PImage snowman1;
PImage snowman2;

void setup()
{
  size(1920, 1080, P2D);
  backGroundImage = loadImage("background.png");
  santa = loadImage("santa.png");
  moon =   loadImage("moon.png");
  snowman1 = loadImage("snowman1.2.png");
  snowman2 = loadImage("snowman2.1.png");
  for (int i = 0; i < _snow.length; i++)
  {
    _snow[i] = new Snow();
  }
  santawithreindeers = loadImage("santawithreindeers.png");
}


void draw()
{
  timer = millis();
  m2 = millis();
  image(backGroundImage, 0, 0, width, height);
  moon();

  Date(); //Lägg ALLA luckor inom denna
  if (open == true) {
    println("OMG it's already");
    println(y+" "+m+" "+d); //insert function here
    println("I gotta get some presents!!!");
  } else {

    text("Don't open this yet", 50, 50); //Nån kul effekt ifall man inte kan öppna den här luckan
  }

  _drawSnowman();
  
  tint(255, 150);
  noTint();
  santaWalking();
  noStroke();

  day24();



  // Stjärnor
  _createStars();


  //Ellipse when door opens
  
  fix();
  fill(255);
  rect(100, 920, _width, _height);
  smooth();

  // Day 1 Snow
  for (int i = 0; i < _snow.length; i++)

  if ( mousePressed == true) {
    test1 = fix(100, 920, _width, _height);
  }
  if (test1==false) {
    fill(255);
    text("1", 140, 950);
  } else if (test1 = true) {
    mouse(100, 920, _width, _height);
    smoke(70);
    smoke2(30);
    smoke3(10);
    smoke4(40);
  }
  
  
  if ( mousePressed == true) {
    test2 = fix(250, 920, _width, _height);
  }

  if (test2==false) {
    fill(255);
    text("2", 300, 950);
  } else if (test2 = true) {
    mouse(300, 920, _width, _height);
    snowB = true;
  }
  if(snowB == true){
     for (int i = 0; i < _snow.length; i++)
  {
    _snow[i].circle();
  } 
  }


}