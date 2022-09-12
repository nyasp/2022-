void setup(){
  size(1000,600);
  PFont f= createFont("標楷體",40);
  textFont(f);
  String [] f1 = { "黑桃","紅心","方塊","梅花"} ,f2 = { "A","2","3","4","5","6","7","8","9","T","J","Q","K"};
  s1 =f1[int(random(4))]+f2[int(random(13))];
  s2 =f1[int(random(4))]+f2[int(random(13))];
  s3 =f1[int(random(4))]+f2[int(random(13))];
  s4 =f1[int(random(4))]+f2[int(random(13))];
  s5 =f1[int(random(4))]+f2[int(random(13))];
}
String s1,s2,s3,s4,s5;
void draw(){
  d(100,100,s1);
  d(250,100,s2);
  d(400,100,s3);
  d(550,100,s4);
  d(700,100,s5);
}
void d(int x ,int y ,String l){
  int del=10;
  fill(#FFFFFF);
  rect(x-del/2,y-del/2,150+del,250+del,20);
  if(l.indexOf("紅心") == -1 && l.indexOf("方塊") == -1) {
    fill(#000000);
    rect(x,y,150,250,20);
    fill(#FFFFFF);
    text(l, x+20, y+60);
  }
  else{
    fill(#FF0000);
    rect(x,y,150,250,20);
    fill(#000000);
    text(l, x+20, y+60);
  }
}
