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
    myColor = 0;
  }
  void move()
  {
    myX = myX + (int)(Math.random()*3)-1;
    myY = myY + (int)(Math.random()*3)-1;
    myColor = (int)(Math.random()*256);
  }
  void show()
  {
    noStroke();
    fill(myColor,myColor,myColor);
    ellipse(myX,myY,20,20);
  }
  void mousePressed()
  {
    redraw();
  }
}