void setup(){
  size(1000,600);
  PFont f= createFont("標楷體",40);
  textFont(f);
  s1 = f1[0];
  s2 = f1[1];
  s3 = f1[2];
  s4 = f1[3];
  s5 = f1[4];
}
String [] f1={"黑桃A","黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K",
       "紅心A","紅心2","紅心3","紅心4","紅心5","紅心6","紅心7","紅心8","紅心9","紅心10","紅心J","紅心Q","紅心K",
       "方塊A","方塊2","方塊3","方塊4","方塊5","方塊6","方塊7","方塊8","方塊9","方塊10","方塊J","方塊Q","方塊K",
       "梅花A","梅花2","梅花3","梅花4","梅花5","梅花6","梅花7","梅花8","梅花9","梅花10","梅花J","梅花Q","梅花K",};
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
void mousePressed(){
  
  s();
  s1 = f1[0];
  s2 = f1[1];
  s3 = f1[2];
  s4 = f1[3];
  s5 = f1[4];
}
void s(){
  for(int i=0;i<10000;i++){
    int a=int(random(52)),b=int(random(52));
    String t =f1[a];
    f1[a]=f1[b];
    f1[b]=t;
  }
}
