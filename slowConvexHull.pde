ArrayList<PEdge> slowConvexHull(ArrayList<PVector> P) {
  ArrayList<PEdge> E = new ArrayList<PEdge>();
  
  for (int i = 0; i < P.size(); i++) {
    for (int j = 0; j < P.size(); j++) {
      if (i == j) continue;
      PVector p = P.get(i);
      PVector q = P.get(j);
      E.add(new PEdge(p, q));
    }
  }
  
  return E;
}
