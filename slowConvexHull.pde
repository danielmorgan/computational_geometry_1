ArrayList<Edge> slowConvexHull(ArrayList<PVector> P) {
  ArrayList<Edge> E = new ArrayList<Edge>();

  for (int i = 0; i < P.size(); i++) {
    for (int j = 0; j < P.size(); j++) {
      boolean valid = true;
      
      if (i == j) continue;
      
      PVector p = P.get(i);
      PVector q = P.get(j);
      Edge e = new Edge(p, q);

      for (int k = 0; k < P.size(); k++) {
        if (i == k || j == k) continue;
        PVector r = P.get(k);
        
        if (!isRightOfOrOnEdge(e, r)) {
          valid = false;
        }
      }
      
      if (valid) {
        E.add(e);
      }
    }
  }
  
  return E;
}

boolean isRightOfOrOnEdge(Edge e, PVector r) {
  PVector p = e.origin;
  PVector q = e.destination;

  float d = (p.x*q.y) - (p.x*r.y)
    + (p.y*r.x) - (p.y*q.x)
    + (q.x*r.y) - (q.y*r.x);

  return d >= 0;
}
