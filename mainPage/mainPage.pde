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
PImage halfMoon;

// smoke variables 
int m2;
//snowman
PImage snowman1;
PImage snowman2;
boolean showSnow = false;
int iniSnow = timer;
boolean open = false; //Open hatch or

PImage snow;

boolean treeDec = false;
boolean houseDec = false;
boolean roofy = false;
PImage treeDecorImg;
PImage houseLightsImg;
PImage roofSnow;

// Mouse variables.
boolean mouseIsClicked = false;

boolean[] canOpenHatch = {
  false, false, false, false, false, 
  false, false, false, false, false, 
  false, false, false, false, false, 
  false, false, false, false, false, 
  false, false, false, false
};
boolean[] hatchOpen = {
  false, false, false, false, false, 
  false, false, false, false, false, 
  false, false, false, false, false, 
  false, false, false, false, false, 
  false, false, false, false
};


void setup()
{
  size(1920, 1080, P2D);
  skier = loadImage("skid-tomte.png");
  backGroundImage = loadImage("background.png");
  santa = loadImage("santa.png");
  moon =   loadImage("moon.png");
  halfMoon = loadImage("halfMoon.png");
  snowman1 = loadImage("snowman1.2.png");
  snowman2 = loadImage("snowman2.1.png");
  santawithreindeers = loadImage("santawithreindeers.png");
  treeDecorImg = loadImage("treeDecor.png");
  houseLightsImg = loadImage("House-lights.png");
  roofSnow = loadImage("houseSnow.png");
  polarbear = loadImage("polarbearwalk.png");
  bloodsplatter = loadImage("bloodsplatter.png");
  godjul = loadImage("godjul.png");
  lucia = loadImage("luciacrowd.png");
  santa2 = loadImage("santa2.png");
  renar = loadImage("renar.png");
  snow = loadImage("snow.png");
  initSparkelsAndMagic();
}


void draw()
{
  timer = millis();
  m2 = millis();
  image(backGroundImage, 0, 0, width, height);
   day3();
   day11();
   if(isHatchOpen(23)){
    day23();
  }
  

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
  noStroke();


  // Stjärnor
  _createStars();
  //day 1
  day6();
  day1();
  day2();
 
  day4();
  if(isHatchOpen(5))
  {
    roofy = true;
    image(roofSnow,895,290,294,174);
    day5();
  }
  day5();
  day7();
  day8();
  if(isHatchOpen(9))
  {
    treeDec = true;
    image(treeDecorImg, 555, 507, 148, 248);
    day9();
  }
  if(isHatchOpen(10))
  {
    houseDec = true;
    image(houseLightsImg, 903, 352, 281, 126);
    day10();
  }
  
  day12();
  day13();
  day14();
  day15();
  day16();
  day17();
  day18();
  day19();
  day20();
  day21();
  day22();
  
  if(isHatchOpen(24))
  {
    day24();
  }

  ////////////////////////////////////////////////
  // Do hatches.
  ////////////////////////////////////////////////
  //day 1
  if (doHatch(1, 250, 950, _width, _height))
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
  if (doHatch(2, 100, 920, _width, _height))
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

  //day 3
  if (doHatch(3, 100, 100, _width, _height))
  {
    
  }
  if (doHatch(4, 300, 500, _width, _height))
  {
    numOfDrops = 10;
    _snow = new Snow[numOfDrops];
    for (int i = 0; i < _snow.length; i++)
    {
      _snow[i] = new Snow();
    }
    snowB = true;
  }
  doHatch(5, 300, 500, _width, _height);
  doHatch(6, 400, 500, _width, _height);
  doHatch(7, 500, 500, _width, _height);
  doHatch(8, 600, 500, _width, _height);
  doHatch(9, 700, 500, _width, _height);
  doHatch(10, 800, 500, _width, _height);
  doHatch(11, 900, 500, _width, _height);
  if (doHatch(12, 1000, 500, _width, _height))
  {
    showSnow = true;
    iniSnow = timer;
  }
  doHatch(13, 1100, 500, _width, _height);
  if(doHatch(14, 1200, 500, _width, _height))
  {
    smoke1 = true;
  }
  doHatch(15, 1300, 500, _width, _height);
  doHatch(16, 1400, 500, _width, _height);
  doHatch(17, 1500, 500, _width, _height);
  doHatch(18, 1600, 500, _width, _height);
  doHatch(19, 1700, 500, _width, _height);
  doHatch(20, 1800, 500, _width, _height);
  doHatch(21, 300, 600, _width, _height);
  doHatch(22, 400, 600, _width, _height);
  doHatch(23, 500, 600, _width, _height);
  doHatch(24, 600, 600, _width, _height);
  
  updateSparkelsAndMagic();
  drawSparkelsAndMagic();

  smooth();

  // Reset mouse.
  mouseIsClicked = false;
}

// Draw the hatch and check if mouse clicked on it.
boolean doHatch(int hatchNumber, int x, int y, int _width, int _height)
{
  // If hatch is open hide hatch.
  if(hatchOpen[hatchNumber - 1])
  {
    return false;
  }

  fill(255);
  text(hatchNumber, x + (_width / 2), y + (_height / 2));
  stroke(255);
  noFill();
  rect(x, y, _width, _height);
  noStroke();
  boolean openHatch = /*canOpenHatch[hatchNumber - 1] &&*/ mouseIsClicked && grid(x, y, _width, _height); 
  if(openHatch)
  {
    createSparkelsAndMagic(x + (_width / 2), y + (_height / 2), 50);
    hatchOpen[hatchNumber - 1] = true;
  }
  return openHatch;
}

boolean isHatchOpen(int hatchNumber)
{
  return hatchOpen[hatchNumber - 1];
}

void mouseClicked()
{
  mouseIsClicked = true;
}