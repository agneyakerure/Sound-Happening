import netP5.*;
import oscP5.*;

OscP5 oscar;

int ball1x = 0;
int ball1y = 0;
int ball1z = 0;
int ball1width = 0;
int ball1height = 0;
int ball2x = 0;
int ball2y = 0;
int ball2z = 0;
int ball2width = 0;
int ball2height = 0;
int ball3x = 0;
int ball3y = 0;
int ball3z = 0;
int ball3width = 0;
int ball3height = 0;

ArrayList<Spheres> allSpheres = new ArrayList();

void setup() {
  size(500, 500, P3D); 
  allSpheres.add (new Spheres(1));
  //allSpheres.add (new Spheres(2));
  //allSpheres.add (new Spheres(3));
  oscar = new OscP5(this,6002);
  oscar.plug(this,"ball1Track","/ball1");
  oscar.plug(this,"ball2Track","/ball2");
  oscar.plug(this,"ball3Track","/ball3");
}

public void ball1Track(int x, int y, int wd, int ht, int z) {
  ball1x = x;
  ball1y = y;
  ball1z = z;
  ball1width = wd;
  ball1height = ht;
}

public void ball2Track(int x, int y, int wd, int ht, int z) {
  ball2x = x;
  ball2y = y;
  ball2z = z;
  ball2width = wd;
  ball2height = ht;
}

public void ball3Track(int x, int y, int wd, int ht, int z) {
  ball3x = x;
  ball3y = y;
  ball3z = z;
  ball3width = wd;
  ball3height = ht;
}

void draw() {
  println(ball3x);
  background(200);
  
  stroke(255, 50);
  strokeWeight(3);
  
  pushMatrix();
  noFill();
  translate(width/2, height/2);
  box(300, 300, 300);
  popMatrix();
  
  
  for(Spheres sphere: allSpheres) {
    sphere.update();
  }
}
