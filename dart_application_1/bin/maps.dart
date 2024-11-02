/*  Key Concepts and Operations to Practice
! Adding Elements to a Map
! Updating Elements in a Map
! Removing Elements from a Map
! Checking for the Existence of Keys/Values
! Iterating Through a Map
! Transforming Maps into Other Data Structures (Lists, Sets, etc.)
! Sorting a Map by Key or Value
! Using Nested Maps and Complex Structures */

//? 1. Counting Frequencies of Elements

/* void main() {
  List<int> nums = [1, 2, 2, 3, 3, 3, 4];
  Map<int, int> freq = {};
  for (int i = 0; i < nums.length; i++) {
    if (freq.containsKey(nums[i])) {
      freq[nums[i]] = freq[nums[i]]! + 1;
    } else {
      freq[nums[i]] = 1;
    }
  }

  print(freq);
}
 */

// ? 2. Finding Duplicates in a List

// void main() {
//   List<String> words = [
//     'apple',
//     'apple',
//     'banana',
//     'apple',
//     'orange',
//     'banana'
//   ];

//   Map<String, int> wordCounts = {};
//   // for (var word in words) {
//   //   wordCounts[word] = (wordCounts[word] ?? 0) + 1;
//   // }
//   for (int i = 0; i < words.length; i++) {
//     if (wordCounts.containsKey(words[i])) {
//       wordCounts[words[i]] = wordCounts[words[i]]! + 1;
//     } else {
//       wordCounts[words[i]] = 1;
//     }
//   }
//   List<String> duplicates = wordCounts.entries
//       .where((entry) => entry.value > 1)
//       .map((entry) => entry.key)
//       .toList();
//   print(duplicates);
// }

// ?3. Grouping Elements by Their Length
// void main() {
//   List<String> words = ['apple', 'dog', 'banana', 'cat', 'kiwi'];
//   Map<int, List<String>> lengthMap = {};

//   for (int i = 0; i < words.length; i++) {
//     int wordlength = words[i].length;
//     if (lengthMap.containsKey(wordlength)) {
//       lengthMap[wordlength]!.add(words[i]);
//     } else {
//       lengthMap[wordlength] = [words[i]];
//     }
//   }
//   print(lengthMap);
// }

// ?4. Sorting a Map by Values
// void main() {
//   Map<String, double> itemPrices = {
//     'apple': 3.99,
//     'banana': 0.99,
//     'cherry': 4.99,
//     'date': 2.99
//   };

//   var sortedItems = itemPrices.entries.toList()
//     ..sort((a, b) => a.value.compareTo(b.value));
//   Map<String, double> sortedMap = {
//     for (var item in sortedItems) item.key: item.value
//   };

//   print(sortedMap);
// }

//? 5. Counting Character Frequencies in a String
// void main() {
//   String text = "hello";
//   Map<String, int> countfreq = {};
//   for (var i in text.split('')) {
//     countfreq[i] = (countfreq[i] ?? 0) + 1;
//   }
//   print(countfreq);
// }

//? 6. Finding the Most Frequent Element
// void main() {
//   List<int> nums = [1, 2, 2, 3, 3, 3, 4];
//   Map<int, int> freq = {};
//   for (var num in nums) {
//     freq[num] = (freq[num] ?? 0) + 1;
//   }

//   var data = freq.entries.reduce(
//     (a, b) => a.value > b.value ? a : b,
//   );
//   print(data.key);
//   print(data.value.toString() + "hello");
// }

//? 7. Mapping from Key to List of Values
// void main() {
//   List<Map<String, dynamic>> people = [
//     {'name': 'Alice', 'color': 'red'},
//     {'name': 'Bob', 'color': 'blue'},
//     {'name': 'Charlie', 'color': 'red'},
//     {'name': 'David', 'color': 'green'}
//   ];

//   Map<String, List> colorMap = {};

//   for (var person in people) {
//     var color = person['color'];
//     var name = person['name'];
//     if (colorMap.containsKey(color)) {
//       colorMap[color]!.add(name);
//     } else {
//       colorMap[color] = [name];
//     }
//   }

//   print(colorMap);
// }

//? 8. Nested Map Operations
// calculate the total spending of price of each user
// void main() {
//   Map<String, List<Map<String, dynamic>>> users = {
//     "Alice": [
//       {"order": "A1", "price": 50},
//       {"order": "A2", "price": 70},
//     ],
//     "Bob": [
//       {"order": "B1", "price": 30},
//       {"order": "B2", "price": 40},
//       {"order": "B3", "price": 20},
//     ],
//   };
/* Example of calculating the sum of an iterable:

!final numbers = <double>[10, 2, 5, 0.5];
!const initialValue = 100.0;
!final result = numbers.fold<double>(
!    initialValue, (previousValue, element) => previousValue + element);
!print(result);  */
//   Map<String, int> spendingMap = {};
//   for (var user in users.keys) {
//     double total = users[user]!.fold(
//       0,
//       (sum, order) => sum + order['price'],
//     );
//     spendingMap[user] = total.toInt();
//   }
//   print(spendingMap);
// }

//? 9. Transforming a List into a Map

// void main() {
//   List<String> items = ['apple', 'banana', 'mango'];
//   Map<String, int> itemMap = {};
//   for (var i = 0; i < items.length; i++) {
//     itemMap[items[i]] = i;
//   }
//   print(itemMap);
// }

// void main() {
//   Map<String, int> studentGrades = {
//     'Alice': 90,
//     'Bob': 85,
//     'Charlie': 90,
//     'David': 75,
//     'Eve': 85
//   };
//   Map<int, List<String>> gradeMap = {};
//   for (var data in studentGrades.entries) {
//     int grade = data.value;
//     String name = data.key;
//     if (gradeMap.containsKey(grade)) {
//       gradeMap[grade]!.add(name);
//     } else {
//       gradeMap[grade] = [name];
//     }
//   }
//   print(gradeMap);
// }

//? Example 3: merge two maps
// void main() {
//   Map<String, String> salesDept = {
//     'John': 'Sales Manager',
//     'Alice': 'Sales Associate',
//   };

//   Map<String, String> marketingDept = {
//     'Bob': 'Marketing Director',
//     'Charlie': 'Marketing Coordinator',
//   };
//   for (var data in marketingDept.entries) {
//     var name = data.key;
//     var role = data.value;
//     salesDept[name] = role;
//   }
//   print(salesDept);
// }
//? Example 4: Finding Maximum Value in a Map

// void main() {
//   Map<String, double> products = {
//     'Laptop': 1200.99,
//     'Smartphone': 699.99,
//     'Tablet': 450.00,
//     'Smartwatch': 199.99,
//   };
//   double maxprice = 0;
//   String productName = "";
//   products.forEach(
//     (product, price) {
//       if (price > maxprice) {
//         // var temp = price;
//         maxprice = price;
//         productName = product;
//       }
//     },
//   );
//   print("Product Name : $productName Price : $maxprice");
// }

//? Example 5: Filtering a Map

// void main() {
//   Map<String, int> studentGrades = {
//     'Alice': 90,
//     'Bob': 75,
//     'Charlie': 60,
//     'David': 85,
//   };
//   int threshold = 70;
//   Map<String, int> filteredGrades = Map.fromEntries(
//       studentGrades.entries.where((element) => element.value > threshold));
//   print(filteredGrades);
// }
