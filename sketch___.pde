int cols, rows;
int scl = 20;
int w=2000;
int h=1600;
float flying=0;
float[][] terrain;
int flag=-1;
int xflag1=1200;
int xflag2=-800;

void setup() {
  size(800, 800, P3D);
  cols=w/scl;
  rows=h/scl;
  terrain = new float[cols][rows];
}

void draw() {
  lights();
  flying -= 0.1;
  float yoff=flying;

  for (int y=0; y<rows; y++) {
    float xoff=0;
    for (int x=0; x<cols; x++) {
      terrain[x][y]=map(noise(xoff, yoff), 0, 5, -100, 100);
      xoff +=0.075;
    }
    yoff +=0.19;
  }


  background(0);
  noStroke();
  fill(#888A8B);

  xflag1=xflag1+flag;
  xflag2=xflag2+(flag*-1);
  if (xflag1<-300) {
    xflag1=1200;
    xflag2=-800;
  }

  translate(xflag1, height/5, -200);

  fill(#FF7446);
  sphere(100);

  fill(255);
  translate(xflag2, height/1.75);
  rotateX(PI/3);
  translate(-w/2, -h/2);
  for (int y=0; y<rows-1; y++) {
    beginShape(TRIANGLE_STRIP);
    for (int x=0; x<cols; x++) {
      vertex(x*scl, y*scl, terrain[x][y]);
      vertex(x*scl, (y+1)*scl, terrain[x][y+1]);
    }
    endShape();
  }
}

void keyPressed() {
  switch(key) {
  case '1' : 
    flag=-1; 
    break;
  case '2' : 
    flag=-5; 
    break;
  case '3' : 
    flag=-10; 
    break;
  case '4' : 
    flag=-30; 
    break;
  case '5' : 
    flag=-50; 
    break;
  }
}
