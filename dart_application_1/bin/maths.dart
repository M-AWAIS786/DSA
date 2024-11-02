// import 'dart:math';

// void main() {
//   List<List<int>> nums = [
//     [1, 1],
//     [3, 4],
//     [-1, 0]
//   ];
//   Solution a = Solution();
//   print(a.minTimeToVisitAllPoints(nums));
// }

// class Solution {
//   int minTimeToVisitAllPoints(List<List<int>> points) {
//     int result = 0;

//     for (int i = 0; i < points.length - 1; i++) {
//       int x1 = points[i][0];
//       int y1 = points[i][1];
//       int x2 = points[i + 1][0];
//       int y2 = points[i + 1][1];
//       int dx = (x2 - x1).abs();
//       int dy = (y2 - y1).abs();
//       result += max(dx, dy);
//     }
//     return result;
//   }
// }
/* // 1. Manhattan Distance
int manhattanDistance(int x1, int y1, int x2, int y2) {
  return (x2 - x1).abs() + (y2 - y1).abs();
}

// 2. Minimum Moves Between Two Points (considering diagonals)
int minMovesBetweenPoints(int x1, int y1, int x2, int y2) {
  int dx = (x2 - x1).abs();
  int dy = (y2 - y1).abs();
  return dx > dy ? dx : dy; // max of dx and dy
}

// 3. Total Moves for Path of Points
int totalMoves(List<List<int>> points) {
  int moves = 0;
  for (int i = 1; i < points.length; i++) {
    moves += minMovesBetweenPoints(
        points[i - 1][0], points[i - 1][1], points[i][0], points[i][1]);
  }
  return moves;
}

void main() {
  List<List<int>> points = [
    [1, 1],
    [3, 4],
    [-1, 0]
  ];
  print(
      totalMoves(points)); // Practice with different points to understand moves
}
 */