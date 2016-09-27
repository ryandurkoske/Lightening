int startX=0, startY=150, endX=0, endY=150;

void setup()
{
  strokeWeight(5);
  background(0);
  size(300,300);
}
void draw()
{
  fill(0,0,0,5);
  rect(0,0,300,300);
  int r = floor((float)Math.random()*256); //red value between 0-255
  int g = floor((float)Math.random()*256); //green value between 0-255
  int b = floor((float)Math.random()*256); //blue value between 0-255
  stroke(r,g,b);
  while(endX <= 300){
    endX = startX + (int)Math.floor(Math.random()*10);
    endY = startY + (int)Math.floor(Math.random()*19)-9;
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed()
{
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
}
