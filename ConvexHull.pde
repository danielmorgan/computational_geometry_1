class ConvexHull {
  public ArrayList<Edge> edges;
  
  public ConvexHull() {
    edges = new ArrayList<Edge>();
  }
  
  public void addEdge(Edge e) {
    edges.add(e);
  }
  
  public ArrayList<PVector> getPoints() {
    ArrayList<PVector> P = new ArrayList<PVector>();
    
    for (int i = 0; i < edges.size(); i++) {
      Edge e = edges.get(i);
      P.add(e.origin);
      P.add(e.destination);
    }
    
    return P;
  }
}
