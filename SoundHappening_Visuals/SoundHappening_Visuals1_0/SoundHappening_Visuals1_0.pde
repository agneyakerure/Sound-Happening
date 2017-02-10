import netP5.*;
import oscP5.*;


OscP5 oscar;

int ball1x = 0;
int ball1y = 0;
int ball1width = 0;
int ball1height = 0;

void setup(){
  size(480,320);
  surface.setResizable(true);
  background(0);
  stroke(255);
  noSmooth();
  oscar = new OscP5(this,6002);
  oscar.plug(this,"ball1Track","/ball1");
}

public void ball1Track(int x, int y, int wd, int ht) {
  ball1x = x;
  ball1y = y;
  ball1width = wd;
  ball1height = ht;
}


void draw() {
  background(0);
  noStroke();
  fill(255,0,0);
  rect(ball1x,ball1y,ball1width,ball1height);
}