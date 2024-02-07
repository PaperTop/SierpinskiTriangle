int size = 50;
public void setup()
{
  fill(0);
  strokeWeight(0);
  size(600,600);
}
public void draw()
{
  background(255);
  sierpinski(300 - size/2 ,600,size);
}
public void keyPressed()//optional
{
  if (keyCode == LEFT){
    size -= 10;
  } else if (keyCode == RIGHT){
    size += 10;
  }
}
public void sierpinski(int x, int y, int len) 
{
  if (len <= 20){
    triangle(x, y, x + len, y, x + len/2, y-len);
  }
   else {
     sierpinski(x,y,len/2);
     sierpinski(x + len/2, y, len/2);
     sierpinski(x + len/4, y - len/2, len/2);
   }
}
