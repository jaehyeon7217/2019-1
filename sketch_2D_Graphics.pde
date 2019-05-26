void setup() {

  size(500, 500);
  rectMode(CENTER);
}
int x, y;
int px=0, py=0;
void draw() {
  background(0);
  fill(#FAC30D);
  ellipse(x, y, 200, 200);
  fill(#FF4E21);
  ellipse(x, y, 50, 50);
  fill(#FF4E21);
  ellipse(x-50, y, 50, 50);
  fill(#FF4E21);
  ellipse(x+50, y, 50, 50);
  fill(#FFFFFF);
  rect(x, y, 10, 10);
  fill(#FFFFFF);
  rect(x-50, y, 10, 10);
  fill(#FFFFFF);
  rect(x+50, y, 10, 10);
  fill(0);
  ellipse(x-30, y-40, 15, 30);
  fill(0);
  ellipse(x+30, y-40, 15, 30);
  fill(#FFFFFF);
  rect(x, y+40, 80, 1);
}
void mousePressed() {
  px=x;
  py=y;
  x=mouseX;
  y=mouseY;
}
