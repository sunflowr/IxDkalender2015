
import jto.colorscheme.*; //importera biblioteket som funktionen bygger på
//för att importera ett "library" gå till Sketch>> Import Library>> [välj ett bibliotek]
//för att ladda hem nya bibliotek, välj Add Library i samma meny

ColorScheme cs;
ColorScheme cs2;

ArrayList<Color> colors;
ArrayList<Color> colors2;
int[] cName;

int counter = 0;

void setup() {
  size(500, 500);
  background(0);

  cs = new ColorScheme("colors-blue-yellow.xml", this);
  cs2 = new ColorScheme("colors-red-green.xml", this);

  colors = cs.getColors();
  colors2 = cs2.getColors();
  colors.addAll(colors2);
  cName = new int[colors.size()];
  cName= cs.toArray();


  frameRate(1);
}

void draw() {
  // toInt() gör om hex-färgen till en Int som Processing kan använda
  background(100);
  fill(colors.get(counter).toInt());


  rect(width/2-50, height/2-50, 100, 100);
  text("color"+counter, width/2-50, height/2-100, 200, 200);

  // räknare som stannar när den gått upp till antal färger
  counter = (counter + 1) % colors.size();
  if (counter>colors.size()) {
    counter=0;
  }

  println("Box:");
  println(colors.get(counter));
  println(colors.get(counter).toInt());
  nameIt(colors); //Metoden på nästa flik
}