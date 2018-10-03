ArrayList<PEdge> slowConvexHull(ArrayList<PVector> P) {
  ArrayList<PEdge> E = new ArrayList<PEdge>();

  for (int i = 0; i < P.size(); i++) {
    for (int j = 0; j < P.size(); j++) {
      boolean valid = true;
      
      if (i == j) continue;
      
      PVector p = P.get(i);
      PVector q = P.get(j);
      PEdge e = new PEdge(p, q);

      for (int k = 0; k < P.size(); k++) {
        if (i == k || j == k) continue;
        
        PVector r = new PVector(1, 3);
        
        if (!isRightOfOrOnEdge(e, r)) {
          valid = false;
        }
      }
      
      if (valid) {
        println(e.origin.x, e.origin.y, ",", e.destination.x, e.destination.y);
        E.add(e);
      }
    }
  }

  exit();
  
  return E;
}

boolean isRightOfOrOnEdge(PEdge e, PVector r) {
  PVector p = e.origin;
  PVector q = e.destination;

  float d = (p.x*q.y) - (p.x*r.y)
    + (p.y*r.x) - (p.y*q.x)
    + (q.x*r.y) - (q.y*r.x);

  return d >= 0;
}
