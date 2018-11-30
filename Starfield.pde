//objective write code to model a working solar system.
Ju
OddballParticle[]sue;
NormalParticle[]bob;
void setup()
{
  background(0);
  size(2800, 1800);
  bob= new NormalParticle [60];
  for (int i=0; i<bob.length; i++)
    bob[i]= new NormalParticle();
}



void draw()
{

  for (int i=0; i<bob.length; i++)
  {

    bob[i].show();
    bob[i].move();
  }
}

interface Particle
{
  public void show();

  public void move();
}

class NormalParticle implements Particle
{
  double myX;
  double myY;
  double myColor;
  double myAngle;
  double mySpeed;
  NormalParticle() {
    myX=400;
    myY=350;

    myColor= color((int)Math.random()*255, (int)Math.random()*255, (int)Math.random()*255);
    myAngle=Math.random()*2*Math.PI;
    mySpeed=Math.random()*10;
  }


   public void move() {
    myX=myX+Math.cos(myAngle)*mySpeed;
    myY=myY+Math.sin(myAngle)*mySpeed;
  }

 public void show() {
    ellipse((float)myX, (float)myY, 3, 3);
  }
}



class OddballParticle //uses an interface
{

  float myX;
  float myY;
  float myColor;
  OddballParticle() {
    myX=150;
    myY=150;
    myColor= color(0, 255, 0);
  }

  void move() {
    myX= myX+ (float)(Math.random()*3)-1;
    myY= myY + (float)(Math.random()*3)-1;
  }
   void draw() {
     for (int i=0; i<sue.length; i++)
     sue.[i]show();
     
}
  






  void show() {
  }
}
class JumboParticle extends NormalParticle//uses inheritance
{
  public void show() {
    ellipse(150, 250, 50, 10);
  }
}
