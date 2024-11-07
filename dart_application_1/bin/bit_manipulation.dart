// ? Largest Combination With Bitwise AND Greater Than Zero
import 'dart:math';

import 'maths.dart';

class Solution {
  int largestCombination(List<int> candidates) {
    int ans = 1;
    for (int i = 0; i < 31; i++) {
      int setBit = 0;
      for (int c in candidates) {
        if (c & (1 << i) != 0) setBit++;
      }
      ans = max(ans, setBit);
    }
    return ans;
  }
}

void main() {
  Solution s = Solution();
  print(s.largestCombination([16, 17, 71, 62, 12, 24, 14]));
}
