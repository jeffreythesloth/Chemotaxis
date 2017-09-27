Bact [] circles;
void setup()
{
  size(300,300);
  background(0);
  circles = new Bact[5];
  for(int i = 0; i < circles.length; i++)
  {
    circles[i] = new Bact();
  }
}
void draw()
{
  for(int i = 0; i < circles.length; i++)
  {
    circles[i].move();
    circles[i].show();
    circles[i].mousePressed();
  }
}
class Bact
{
  int myX,myY,myColor;
  Bact()
  {
    myX = 150;
    myY = 150;
  }
  void move()
  {
    myX = myX + (int)(Math.random()*3)-1;
    myY = myY + (int)(Math.random()*3)-1;
  }
  void show()
  {
    noStroke();
    background((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    ellipse(myX,myY,50,50);
    ellipse(myX+25,myY+25,50,50);
    ellipse(myX-25,myY-25,50,50);
    ellipse(myX-25,myY+25,50,50);
    ellipse(myX+25,myY-25,50,50);
  }
  void mousePressed()
  {
    redraw();
  }