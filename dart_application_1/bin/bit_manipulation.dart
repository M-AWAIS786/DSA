// ? Largest Combination With Bitwise AND Greater Than Zero
import 'dart:math';

// class Solution {
//   int largestCombination(List<int> candidates) {
//     int ans = 1;
//     for (int i = 0; i < 31; i++) {
//       int setBit = 0;
//       for (int c in candidates) {
//         if (c & (1 << i) != 0) setBit++;
//       }
//       ans = max(ans, setBit);
//     }
//     return ans;
//   }
// }
// class Solution {
//   int search(List<int> nums, int target) {
//     int start = 0;
//     int end = nums.length - 1;
//     while (start <= end) {
//       int mid = ((start + end) / 2).floor();
//       if (nums[mid] == target) {
//         return mid;
//       }
//       if (nums[mid] < target) {
//         start = mid + 1;
//       } else {
//         end = mid - 1;
//       }
//     }
//     return -1;
//   }
// }

// class Solution {
//   int findContentChildren(List<int> g, List<int> s) {
//     g.sort();
//     s.sort();
//     int contentChildren = 0; // who receives a cookie
//     int cookieIndex = 0; // who gives a cookie

//     while (cookieIndex < s.length && contentChildren < g.length) {
//       if (s[cookieIndex] >= g[contentChildren]) {
//         contentChildren++;
//       }
//       cookieIndex++;
//     }
//     return contentChildren;
//   }
// }

// class Solution {
//   int thirdMax(List<int> nums) {
//     int? first;
//     int? second;
//     int? third;

//     for (int num in nums) {
//       if (num == first || num == second || num == third) continue;

//       if (first == null || num > first) {
//         third = second;
//         second = first;
//         first = num;
//       } else if (second == null || num > second) {
//         third = second;
//         second = num;
//       } else if (third == null || num > third) {
//         third = num;
//       }
//     }
//     return third ?? first!;
//   }
// }

// class Solution {
//   int findMaxConsecutiveOnes(List<int> nums) {
//     int consCount = 0;
//     int prevCount = 0;
//     for (int i = 0; i < nums.length; i++) {
//       if (nums[i] == 1) {
//         consCount++;
//         if (consCount > prevCount) prevCount = consCount;
//       } else if (nums[i] == 0) {
//         consCount = 0;
//       }
//     }
//     return prevCount;
//   }
// }

// class Solution {
//   List<int> runningSum(List<int> nums) {
//     List<int> result = [];
//     int sum = 0;
//     for (int i = 0; i < nums.length; i++) {
//       sum += nums[i];

//       result.add(sum);
//     }
//     return result;
//   }
// }

class Solution {
  int largestAltitude(List<int> gain) {
    int maxVal = 0;
    int alt = 0;
    for (int i = 0; i < gain.length; i++) {
      alt += gain[i];
      maxVal = max(maxVal, alt);
    }
    return maxVal;
  }
}

void main() {
  Solution s = Solution();
  print(s.largestAltitude([-5, 1, 5, 0, -7]));
}
