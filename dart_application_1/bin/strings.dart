void main() {
  Solution a = Solution();
  // print(a.reverseWords("a good   example"));
  // print(a.isPalindrome("gog"));
  // print(a.lengthOfLongestSubstring("abcabcbb"));
  print(a.isAnagram("anagram", "nagaram"));
}

class Solution {
  //! 1. Reverse Words in a String
  //! Pattern: Split and Reverse
  String reverseWords(String s) {
    return s.split(' ').reversed.join(' ');
  }
//!   2. Check if a String is a Palindrome
//! Pattern: Two-Pointer Technique

  bool isPalindrome(String s) {
    int left = 0, right = s.length - 1;
    while (left < right) {
      if (s[left] != s[right]) return false;
      left++;
      right--;
    }
    return true;
  }

  //! 3. Find the Longest Substring Without Repeating Characters
  //! Pattern: Sliding Window
  int lengthOfLongestSubstring(String s) {
    Map<String, int> charMap = {};
    int maxLength = 0, start = 0;

    for (int index = 0; index < s.length; index++) {
      String char = s[index];
      if (charMap.containsKey(char)) {
        start = (charMap[char]! + 1 > start) ? charMap[char]! + 1 : start;
      }
      charMap[char] = index;
      maxLength =
          (index - start + 1 > maxLength) ? index - start + 1 : maxLength;
    }

    return maxLength;
  }

  //! 4. Valid Anagram
//! Pattern: Frequency Map
  bool isAnagram(String s, String t) {
    if (s.length != t.length) return false;

    List<int> charCounts = List.filled(26, 0);
    for (int i = 0; i < s.length; i++) {
      charCounts[s.codeUnitAt(i) - 'a'.codeUnitAt(0)]++;
      charCounts[t.codeUnitAt(i) - 'a'.codeUnitAt(0)]--;
    }

    for (int count in charCounts) {
      if (count != 0) return false;
    }
    return true;
  }
}


//! Commonly used String Functions in Dart
/* Commonly Used String Functions in Dart
Dart has a variety of string functions that can streamline many operations. Here’s a list of essential functions and their applications:

String Manipulation:

str.length: Gets the length of the string.
str[i]: Accesses the character at index i.
str.split(' '): Splits the string by a delimiter, useful for word-based problems.
str.trim(): Removes whitespace from both ends of the string.
str.substring(start, end): Extracts a substring from start to end.
str.contains(substring): Checks if a substring is present.
str.indexOf(substring): Finds the index of a substring.
str.replaceAll(from, to): Replaces all instances of a substring with another.
String Transformation:

str.toLowerCase(): Converts all characters to lowercase.
str.toUpperCase(): Converts all characters to uppercase.
str.codeUnits: Returns the ASCII (Unicode) codes of each character, useful for character-based math.
str.replaceAllMapped: Maps each substring and replaces it based on a function.
Checking String Properties:

str.isEmpty and str.isNotEmpty: Checks if a string is empty or non-empty.
str.startsWith(prefix) and str.endsWith(suffix): Checks for specific prefixes or suffixes.
RegExp(r'pattern').hasMatch(str): Checks for regular expression matches. */
/* Practicing string-related problems is a fantastic way to master various patterns and functions, especially when working with Dart, as it provides a variety of helpful tools for string manipulation. Here’s a guide to string manipulation concepts, patterns, and functions commonly used to solve problems, particularly in platforms like LeetCode.

Key String Patterns and Techniques
Two-Pointer Technique:

Commonly used for problems like palindrome checking, reversing words, or substring finding.
Example problems: Valid Palindrome, Reverse String, Longest Substring Without Repeating Characters.
Sliding Window:

Helpful for finding substrings with specific properties (e.g., length, unique characters).
Example problems: Longest Substring Without Repeating Characters, Minimum Window Substring.
Hash Map or Frequency Map:

Useful for counting character frequencies or identifying unique characters in substrings.
Example problems: Anagrams, Longest Substring with At Most Two Distinct Characters.
Dynamic Programming (DP):

Solves problems that can be broken down into overlapping subproblems, such as longest common subsequence.
Example problems: Longest Palindromic Substring, Edit Distance.
Pattern Matching and Regular Expressions:

Regular expressions are very effective for searching patterns or validating formats within strings.
Example problems: Regular Expression Matching, Valid Number. */



