public void setup(){
    size(500,500);
    ellipseMode(CENTER);
    noLoop();
  }
public void draw(){
  background(250,218,221);
  myFractal(250,250,400);
  }
public void myFractal(int x, int y, int siz){
  int myC, myO;
  myC = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  myO = 240;
  fill(myC, myO);
  ellipse(x,y,siz,siz);
  if(siz > 100){
     myFractal(x, y - siz/2, siz/2);
     myFractal(x-siz/3, y-siz/3, siz/2);
     myFractal(x+siz/3, y-siz/3, siz/2);
     myFractal(x - siz/2, y, siz/2);
     myFractal(x-siz/3, y+siz/3, siz/2);
     myFractal(x + siz/2, y, siz/2);
     myFractal(x+siz/3, y+siz/3, siz/2);
     myFractal(x, y + siz/2, siz/2);
  }
}
