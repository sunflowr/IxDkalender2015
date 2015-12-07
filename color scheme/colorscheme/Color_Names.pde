color color1;
color color2;
color color3;
color color4;
color color5;
color color6;
color color7;
color color8;
color color9;
color color10;
color color11;
color color12;
color color13;
color color14;
color color15;
color color16;
color color17;
color color18;
color color19;
color color20;


void nameIt(ArrayList<Color> colors3){

  for(int i=1; i<colors3.size(); i++){
   color1 = (colors3.get(i).toInt());
    fill(colors3.get(i).toInt());
    rect(50+i*50, 20, 20, 20);
        text("color: "+i,50+i*50, 20, 20, 20);

  }
  
  
}