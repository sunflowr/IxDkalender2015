
int date;
int d = day();    // 1 - 31
int m = month();  // 1 - 12
int y = year(); // 2015
int today;

void Date(){
date=19;
//luckaNr;
today=d;
 //om  datumet är idag eller mer, frigör lucka
 if(m == 12 && date >= today){
   open=true;
 }
 else{
 open=false;
 }
}