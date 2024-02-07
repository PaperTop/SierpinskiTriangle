public void setup()
{
  fill(0);
  strokeWeight(0);
  size(600,600);
}
public void draw()
{
  sierpinski(0,600,600);
}
public void keyPressed()//optional
{
}
public void sierpinski(i nt x, int y, int len) 
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
