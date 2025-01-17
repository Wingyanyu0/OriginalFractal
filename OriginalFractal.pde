public void setup(){
    size(700,700);
    ellipseMode(CENTER);
    noLoop();
  }
public void draw(){
  background(250,218,221);
  int myC, myO; 
  myC = color(250,170,172);
  myO = 100;
  fill(myC, myO);
  rect(70,70,550,550);
  fill(255,255,224);
  myFractal(350,350,400);
  }
public void myFractal(int x, int y, int siz){
  int myC, myO;
  myC = color((int)(Math.random()*255), (int)(Math.random()*121), (int)(Math.random()*223));
  myO = 240;
  fill(myC, myO);
  ellipse(x,y,siz,siz);
  if(siz > 100){
     myFractal(x, y - siz/2, siz/2);
     myFractal(x-siz/3, y-siz/3, siz/2);
     myFractal(x, y + siz/2, siz/2);
     myFractal(x+siz/3, y-siz/3, siz/2);
     
     myFractal(x - siz/2, y, siz/2);
     myFractal(x-siz/3, y+siz/3, siz/2);
     myFractal(x + siz/2, y, siz/2);
     myFractal(x+siz/3, y+siz/3, siz/2);
     myFractal(x, y + siz/2, siz/2);
     
     myFractal(x, y - siz/4, siz/4);
     myFractal(x-siz/6, y-siz/6, siz/4);
     myFractal(x+siz/6, y-siz/6, siz/4);
     myFractal(x - siz/4, y, siz/4);
     
     myFractal(x-siz/6, y+siz/6, siz/4);
     myFractal(x, y + siz/4, siz/4);
     myFractal(x+siz/6, y+siz/6, siz/4);
     myFractal(x + siz/4, y, siz/4);
  }
}
