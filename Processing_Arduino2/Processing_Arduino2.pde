import processing.serial.*;

Serial p;
PImage img;
void setup() {
  size(500, 500);
  p = new Serial(this, "COM5", 9600);
  img =loadImage("D:\\aaa.png");
}
void draw() {
  if (p.available()>0) {
    String m = p.readString();
    m = m.trim();
    int a = int(m);

    background(0);
    imageMode(CENTER);

    image(img, 250, 250, a, a);
    println(a);
  }
}
