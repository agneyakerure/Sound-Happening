class Spheres {
  float radius;
  float Xpos;
  float Ypos;
  float Zpos;
  
  Spheres(float r, float x, float y, float z) {
    Xpos = x;
    Ypos = y;
    Zpos = z;
    radius = r;
  }
  
  void update() {
    updatePosition();
    render();
  }
  
  void updatePosition() {
    Xpos = ball1x;
    Ypos = ball1y;
    Zpos = ball1z;
  }
  
  
  void render() {
    pushMatrix();
    translate(Xpos,Ypos, Zpos);
    fill(Ypos, Xpos, 160);
    sphere(radius);
    popMatrix();
  }
  
}
