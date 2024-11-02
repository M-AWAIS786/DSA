class Solution {
  List<int> spiralOrder(List<List<int>> matrix) {
    int top = 0;
    int bottom = matrix.length - 1;
    print("bottom: $bottom");
    int left = 0;
    int right = matrix[0].length - 1;
    print("right: $right");
    int example = matrix[0].length;
    print("example: $example");

    List<int> result = [];
    //input:
    //  List<List<int>> matrix = [
    //     [1, 2, 3],
    //     [4, 5, 6],
    //     [7, 8, 9]
    //   ];
    //output:[1,2,3,6,9,8,7,4,5]

    // while (top <= bottom && left <= right) {
    //   //! left to right
    //   for (int i = left; i <= right; i++) {
    //     result.add(matrix[top][i]);
    //   }
    //   // print(result);
    //   // ! top to bottom
    //   top++; //top =1
    //   // top to bottom
    //   for (int i = top; i <= bottom; i++) {
    //     result.add(matrix[i][right]);
    //   }
    //   //   print("top to bottom: $result");
    //   right--; // right = 1
    //   // right to left

    //   //top =1 bottom =2
    //   if (top <= bottom) {
    //     // left=0; right=1
    //     for (int i = right; i >= left; i--) {
    //       result.add(matrix[bottom][i]);
    //     }
    //     bottom--; //bottom =1
    //   }

    //   // left to right
    //   // left =0 right =1
    //   //bottom =1  top=1
    //   if (left <= right) {
    //     for (int i = bottom; i >= top; i--) {
    //       result.add(matrix[i][left]);
    //     }
    //     left++;
    //   }
    // }

    // print("start : $start");
    return result;
  }
}

void main() {
  List<List<int>> matrix = [
    [1, 2, 3, 4],
    [5, 6, 7, 8],
    [9, 10, 11, 12]
  ];
  Solution s = Solution();
  print(s.spiralOrder(matrix));
}

//? Output: [1,2,3,6,9,8,7,4,5]

// Input: [[1,2,3], [4,5,6], [7,8,9]]
// Output: 15 (1 + 5 + 9 + 3 + 7)

// void main() {
//   List<List<int>> matrix = [
//     [1, 8, 3],
//     [4, 5, 6],
//     [7, 8, 9],
//   ];

//   print(diagonalSum(matrix)); // Output: 25
// }

// int diagonalSum(List<List<int>> matrix) {
//   int sum = 0;
//   int n = matrix.length;

//   for (int i = 0; i < n; i++) {
//     sum += matrix[i][i]; // Primary diagonal
//     // n=3, 3-1-0= 2
//     sum += matrix[i][n - 1 - i]; // Secondary diagonal
//   }

//   // If the matrix size is odd, subtract the middle element since it was added twice
//   if (n % 2 == 1) {
//     sum -= matrix[n ~/ 2][n ~/ 2]; // means 3/2, 3/2 and give matric no = 5
//     // 30-5 = 25
//   }

//   return sum;
// }
