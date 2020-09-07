int startX = 300;
int startY = 0;
int endX = 300;
int endY = 0;

void setup()
{
  size(600, 600);
  background(10, 10, 10);
  noFill();
  strokeWeight(2);
  frameRate(60);
}
void draw()
{
  fill(0, 0, 0, 5);
  rect(-5, -5, 700, 700);
  stroke(((int) (Math.random() * 256)),((int) (Math.random() * 256)),((int) (Math.random() * 256)));
  while (endY < 600) {
    startX = ((int) (Math.random() * 601));
    endX = startX + ((int) ((Math.random() * 20) - 10));
    endY = startY + ((int) (Math.random() * 10));
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
}
}
void mousePressed()
{
  startX = 300;
  startY = 0;
  endX = 300;
  endY = 0;
}
