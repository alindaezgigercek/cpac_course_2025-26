
import fisica.*;

FWorld world;
int ballCount = 10;

void setup() {
  size(400, 400);
  smooth();

  Fisica.init(this);

  world = new FWorld();
  world.setEdges();
  world.setEdgesRestitution(0.0);
 
  for (int i=0; i<ballCount; i++) {
    FCircle b = new FCircle(25);
    b.setPosition(map(i, 0, ballCount-1, 40, width-40), height/6);
    b.setRestitution(map(i, 0, ballCount-1, 0.0, 1.0));
    b.setNoStroke();
    b.setFill(map(i, 0, ballCount-1, 60, 255), 80, 120);
    world.add(b);
  }
}

void draw() {
  background(255);

  world.step();
  world.draw();
}

void mousePressed(){
  
  
}
