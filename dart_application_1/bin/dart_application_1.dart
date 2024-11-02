









//! Example 1:

// Input: nums = [8,1,2,2,3]
// Output: [4,0,1,1,3]
// Explanation:
// For nums[0]=8 there exist four smaller numbers than it (1, 2, 2 and 3).
// For nums[1]=1 does not exist any smaller number than it.
// For nums[2]=2 there exist one smaller number than it (1).
// For nums[3]=2 there exist one smaller number than it (1).
// For nums[4]=3 there exist three smaller numbers than it (1, 2 and 2).

//after sortt
// [1,2,2,3,8]
// class Solution {
//   List<int> smallerNumbersThanCurrent(List<int> nums) {
//     List<int> sorted = List.from(nums)..sort();
//     List<int> result = [];
//     Map<int, int> countMap = {};

//     for (int i = 0; i < sorted.length; i++) {
//       if (!countMap.containsKey(sorted[i])) {
//         countMap[sorted[i]] = i;
//       }
//     }
//     print(countMap);
//     result = nums.map((num) => countMap[num]!).toList();
//     return result;
//   }
// }

// void main() {
//   List<int> nums = [7, 7, 7, 7];
//   Solution a = Solution();
//   print(a.smallerNumbersThanCurrent([8, 1, 2, 2, 3]));
//   // print(a.smallerNumbersThanCurrent(nums)); // Output: [4, 0, 1, 1, 3]
// }

// void main() {
//   Solution a = Solution();
//   a.smallerNumbersThanCurrent([8, 1, 2, 2, 3]);
// }

// void main() {
//   Map<String, dynamic> userData = {
//     "name": "awais",
//     "age": 23,
//     "colors": [
//       {
//         "green": ["lightgreen", "darkgreen"],
//         "address": {
//           "city": "jhelum",
//           "postcode": 4600,
//           "favcity": ["rwp", "islamabad", "lahore"]
//         }
//       }
//     ]
//   };
//   final List<Modeldata> result = [];
//   result.add(Modeldata.fromJson(userData));

//   result.forEach((element) => print(element.colors!.address!.favcity![0]));
//   // print(UriData);
// }

// class Modeldata {
//   String? name;
//   int? age;
//   ColorsClass? colors;

//   Modeldata({required this.name, required this.age, required this.colors});

//   Modeldata.fromJson(Map<String, dynamic> json) {
//     name = json['name'] ?? '';
//     age = json['age'] ?? '';
//     colors = ColorsClass.fromJson((json['colors'] as List).first);
//   }
// }

// class ColorsClass {
//   List<String>? green;
//   AddressClass? address;
//   ColorsClass({required this.green, required this.address});

//   ColorsClass.fromJson(Map<String, dynamic> json) {
//     green = json['green'];
//     address = AddressClass.fromJson(json['address']);
//   }
// }

// class AddressClass {
//   String? city;
//   int? postcode;
//   List<String>? favcity;

//   AddressClass({this.city, this.postcode, this.favcity});

//   AddressClass.fromJson(Map<String, dynamic> json) {
//     city = json['city'];
//     postcode = json['postcode'];
//     favcity = json['favcity'];
//   }
// }

/*  Example 1:

Input: nums = [8,1,2,2,3]
Output: [4,0,1,1,3]
Explanation: 
For nums[0]=8 there exist four smaller numbers than it (1, 2, 2 and 3). 
For nums[1]=1 does not exist any smaller number than it.
For nums[2]=2 there exist one smaller number than it (1). 
For nums[3]=2 there exist one smaller number than it (1). 
For nums[4]=3 there exist three smaller numbers than it (1, 2 and 2).
 */
// Problem 1: Find Greater Elements on the Right Side
// class Solution {
//   List<int> arrayRankTransform(List<int> arr) {
//     // Step 1: Create a sorted version of the array with unique elements.
//     List<int> sortedUnique = arr.toSet().toList()..sort();

//     // Step 2: Create a map of ranks based on sorted unique values.
//     Map<int, int> rankMap = {};
//     for (int i = 0; i < sortedUnique.length; i++) {
//       rankMap[sortedUnique[i]] = i + 1;
//     }

//     // Step 3: Map each element in the original array to its rank.
//     List<int> result = arr.map((num) => rankMap[num]!).toList();
//     print(result);
//     return result;
//   }
// }

// import 'dart:math';

// void main() {
//   Solution sol = Solution();
//   sol.moveZeroes([0, 1, 0, 0, 3, 12]);
// }

// //? [1,3,12,0,0]
// class Solution {
//   void moveZeroes(List<int> nums) {
//     // int j = nums.length - 1;
//     int temp;
//     int nonzeros = 0;
//     for (int i = 0; i < nums.length; i++) {
//       if (nums[i] != 0) {
//         print("${i} i");
//         if (i != nonzeros) {
//           print("${nonzeros} nonzero");
//           temp = nums[i];
//           nums[i] = nums[nonzeros];
//           nums[nonzeros] = temp;
//         }
//         nonzeros++;
//       }
//     }
//     print(nums);
//   }
// }

// ignore_for_file: public_member_api_docs, sort_constructors_first
// Example 1:

// Input: nums = [3,2,3]
// Output: 3
// Example 2:

// Input: nums = [2,2,1,1,1,2,2]
// Output: 2

// void main() {
//   // print('hello');
//   Solution solution = Solution();
//   final result1 =
//       solution.containsNearbyDuplicate([1, 2, 3, 1], 3); // Expected: true
//   final result2 =
//       solution.containsNearbyDuplicate([1, 2, 3, 4], 1); // Expected: false
//   final result3 =
//       solution.containsNearbyDuplicate([1, 0, 1, 1], 1); // Expected: true
//   print("f" + result1.toString());
//   print("s" + result2.toString());
//   print("t" + result3.toString());
// }

// class Solution {
//   bool containsNearbyDuplicate(List<int> nums, int k) {
//     Map<int, int> indexmap = {};

//     for (int i = 0; i < nums.length; i++) {
//       if (indexmap.containsKey(nums[i])) {
//         int previousIndex = indexmap[nums[i]]!;

//         if ((i - previousIndex).abs() <= k) {
//           return true;
//         }
//       }
//       indexmap[nums[i]] = i;
//     }
//     return false;
//   }
// }

//  bool value = false;
//     for (int i = 0; i < nums.length; i++) {
//       for (int j = nums.length - 1; j > 0; j--) {
//         if (i != j) {
//           if (nums[i] == nums[j] && (i - j).abs() <= k) {
//             value = true;
//           }
//         }
//       }
//     }
//     return value;

// // Binary Search Tree
// void main() {
//   BinaryTree bst = BinaryTree();

//   bst.insert(50);
//   bst.insert(30);
//   bst.insert(70);
//   bst.insert(20);
//   bst.insert(40);
//   bst.insert(60);
//   bst.insert(80);
//   // print(binaryTree.root!.right!.value);
//   // bst.inOrderTraversal(bst.root);
//   // print(bst.root!.value);

//   bst.search(30);
//   // print(bst.root!.value);
//   // print(result);
// }

// class TreeNode {
//   TreeNode? left;
//   TreeNode? right;
//   int value;
//   TreeNode({required this.value});
// }

// class BinaryTree {
//   TreeNode? root;
//   BinaryTree({this.root});

//   void insert(int value) {
//     root = _insertRecursiverly(root, value);
//   }

//   TreeNode _insertRecursiverly(TreeNode? node, int value) {
//     if (node == null) {
//       return TreeNode(value: value);
//     }

//     if (value < node.value) {
//       node.left = _insertRecursiverly(node.left, value);
//     } else if (value > node.value) {
//       node.right = _insertRecursiverly(node.right, value);
//     }
//     return node;
//   }

//   void inOrderTraversal(TreeNode? node) {
//     if (node == null) {
//       return;
//     }
//     inOrderTraversal(node.left); // Traverse the left subtree
//     print(node.value); // Process the current node
//     // inOrderTraversal(node.right);
//   }

//   //? Search Function
//   void search(int value) {
//     TreeNode? result = _searchRecursively(root, value);
//     if (result == null) {
//       print('Not found');
//     } else {
//       print('found ${result.value}');
//     }
//   }
// }

// TreeNode? _searchRecursively(TreeNode? node, int value) {
//   if (node == null) {
//     return null;
//   }
//   if (node.value == value) {
//     return node;
//   } else if (node.value > value) {
//     return _searchRecursively(node.left, value);
//   } else if (node.value < value) {
//     return _searchRecursively(node.right, value);
//   }
// }
