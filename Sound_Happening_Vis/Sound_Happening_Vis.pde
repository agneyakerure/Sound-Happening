import netP5.*;
import oscP5.*;

OscP5 oscar;

int ball1x = 0;
int ball1y = 0;
int ball1z = 0;
int ball1width = 0;
int ball1height = 0;

ArrayList<Spheres> allSpheres = new ArrayList();

void setup() {
  size(500, 500, P3D); 
  allSpheres.add (new Spheres(10,0,0,0));
  oscar = new OscP5(this,6002);
  oscar.plug(this,"ball1Track","/ball1");
}

public void ball1Track(int x, int y, int wd, int ht, int z) {
  ball1x = x;
  ball1y = y;
  ball1z = z;
  ball1width = wd;
  ball1height = ht;
}

void draw() {
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
