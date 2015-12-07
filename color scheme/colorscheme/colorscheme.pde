import jto.colorscheme.*;

ColorScheme cs;
ColorScheme cs2;

ArrayList<Color> colors;
ArrayList<Color> colors2;

int counter = 0;

void setup() {
  size(500, 500);
  background(0);

  cs = new ColorScheme("colors-blue-yellow.xml", this);
  cs2 = new ColorScheme("colors-red-green.xml", this);

  colors = cs.getColors();
  colors2 = cs2.getColors();
  colors.addAll(colors2);

  frameRate(1);
}

void draw() {
  // set the background to the current color
  // notice the use of toInt() to convert it to
  // an int (the same as processing's color type)
  background(colors.get(counter).toInt());
  fill(colors2.get(counter).toInt());

  rect(100, 100, width/2, height/2);

  // update the counter
  counter = (counter + 1) % colors.size();
  println(colors.size());
  
  nameIt(colors);

}