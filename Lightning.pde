void setup()
{
  size(400, 400);
  strokeWeight(5);
  background(0);
}
int startX;
int startY;
int endX;
int endY;
void draw()
{   
    fade();
    lightning();
 }
void mousePressed()
{
  noStroke();
  fill(255,255,0);
  ellipse(mouseX,mouseY,50,50);
}

void lightning()
{
    startX = mouseX;
    startY = mouseY;
    stroke(random(255), random(255), random(255));
  while (endY < 400) {
    endX = startX + ((int)random(-9,10));
    endY = startY + ((int)random(0, 10));
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
    endY = 0;
}

void fade()
{
    stroke(192);
    fill(0,0,0,15);
    rect(0,0,400,400);
}
