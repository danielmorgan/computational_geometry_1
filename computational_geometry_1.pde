static int gridInterval = 50; //<>//
static int pointRadius = 12;

ArrayList<PVector> P;

void setup() {
  size(500, 500);
  
  P = new ArrayList<PVector>();
}

void draw() {
  background(#ffffff);

  ArrayList<Edge> E = slowConvexHull(P);
  
  drawGrid(#dddddd);
  drawEdges(E, #ff7744);
  drawVertices(P, #ffffff, #3388ff);
}

void mouseClicked() {
  P.add(new PVector(mouseX, mouseY));
}
