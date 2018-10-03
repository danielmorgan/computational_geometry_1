static int gridInterval = 50; //<>//
static int pointRadius = 12;

void setup() {
  size(500, 500);
}

void draw() {
  background(#ffffff);

  ArrayList<PVector> P = new ArrayList<PVector>();
  P.add(new PVector(3, 3));
  P.add(new PVector(6, 3));
  P.add(new PVector(8, 7));
  P.add(new PVector(4, 6));
  P.add(new PVector(5, 5));
  //scalePoints(P);

  ArrayList<PEdge> E = slowConvexHull(P);

  drawGrid(#dddddd);
  drawEdges(E, #ff7744);
  drawVertices(P, #ffffff, #3388ff);
}

void scalePoints(ArrayList<PVector> P) {
  for (int i = 0; i < P.size(); i++) {
    P.get(i).mult(gridInterval);
  }
}
