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


void drawEdges(ArrayList<Edge> E, color c) {
  for (int i = 0; i < E.size(); i++) {
    drawEdge(E.get(i), c);
  }
}


void drawEdge(Edge e, color c) {
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
