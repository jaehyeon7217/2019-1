import processing.serial.*;
Serial p;

void setup() {
  size(500, 500);
  p = new Serial(this, "COM5", 9600);
}

void draw() {
  if (p.available()>0) {
    String m = p.readString();
    m = m.trim();
    int a = int(m);

    println(a);
  }
}
