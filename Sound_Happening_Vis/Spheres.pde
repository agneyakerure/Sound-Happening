class Spheres {
  float radius = 10;
  float Xpos;
  float Ypos;
  float Zpos;
  float realX;
  float realY;
  
  int id;
  
  Spheres(int ballId) {
    id = ballId;
  }
  
  void update() {
    updatePosition();
    render();
  }
  
  void updatePosition() {
    if(id == 1) {
      Xpos = ball1x;
      Ypos = ball1y;
      Zpos = ball1z;
    } else if(id == 2) {
      Xpos = ball2x;
      Ypos = ball2y;
      Zpos = ball2z;
    } else if(id == 3) {
      Xpos = ball3x;
      Ypos = ball3y;
      Zpos = ball3z;
    }
  }
  
  
  void render() {
    realX = map(ball1x, 320, 0, 0, 500);
    realY = map(ball1y, 240, 0, 0 ,500);
    
    pushMatrix();
    translate(realX,250, realY);
    fill(Ypos, Xpos, 160);
    sphere(radius);
    popMatrix();
    println(realX);
  }
  
}
