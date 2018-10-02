static int gridInterval = 50;
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
  scalePoints(P);
  
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

void drawGrid(color c) {
  stroke(c);
  strokeWeight(1);
  
  for (int x = gridInterval; x < width; x += gridInterval) {
    line(x, 0, x, height);
  }
  
  for (int y = gridInterval; y < height; y += gridInterval) {
    line(0, y, width, y);
  }
}

void drawEdges(ArrayList<PEdge> E, color c) {
  for (int i = 0; i < E.size(); i++) {
    PEdge e = E.get(i);
    drawEdge(e, c);
  }
}

void drawEdge(PEdge e, color c) {
  stroke(c);
  strokeWeight(2);
  
  PVector o = e.origin;
  PVector d = e.destination;
  line(o.x, o.y, d.x, d.y);
}

void drawVertices(ArrayList<PVector> P, color s, color f) {
  stroke(s);
  strokeWeight(3);
  fill(f);
  
  for (int i = 0; i < P.size(); i++) {
    PVector p = P.get(i);
    ellipse(p.x, p.y, pointRadius, pointRadius);
  }
}
