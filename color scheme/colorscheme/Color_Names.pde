color[] c= new color[colors.size()];

IntList colorList;


void nameIt(ArrayList<Color> colors) {
  colorList = new IntList();
  int count=0;
  int x2pos = width-50;
  for (int i=0; i<colors.size(); i++) {
    colorList.append(colors.get(i).toInt());
    c[i]= 
    fill(colors.get(i).toInt());
    rect(40+i*20, 20, 20, 20);
    rect(x2pos-i*22, height-40, 20, 20);
    //text("color number: "+i, 40+i*20, 20, 20, 20);
  }
  count=count+1;
  print(colorList.get(count));
}