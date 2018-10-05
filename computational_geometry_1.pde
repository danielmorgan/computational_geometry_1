static int gridInterval = 50; //<>//
static int pointRadius = 12;

ArrayList<PVector> P;

void setup() {
  size(500, 500);
  
  P = new ArrayList<PVector>();
}

void draw() {
  background(#ffffff);
  
  drawGrid(#dddddd);
  drawVertices(P, #ffffff, #3388ff);
  drawConvexHull(slowConvexHull(P));
}

void mouseClicked() {
  P.add(new PVector(mouseX, mouseY));
}
