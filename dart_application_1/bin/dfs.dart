void main() {
  Map<int, List<int>> graph = {
    1: [2, 3],
    2: [4, 5],
    3: [],
    4: [6],
    5: [],
    6: []
  };

  Set<int> visited = {};
  dfs(1, graph, visited);
}

void dfs(int node, Map<int, List<int>> graph, Set<int> visited) {
  if (visited.contains(node)) return;

  visited.add(node);
  print("Visited node: $node");

  for (int neighbor in graph[node]!) {
    dfs(neighbor, graph, visited);
  }
}
