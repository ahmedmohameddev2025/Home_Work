// 242. Valid Anagram

// Given two strings s and t, return true if t is an anagram of s, and false otherwise.


// Example 1:

// Input: s = "anagram", t = "nagaram"

// Output: true

// Example 2:

// Input: s = "rat", t = "car"

// Output: false


// Constraints:

// 1 <= s.length, t.length <= 5 * 104
// s and t consist of lowercase English letters.
void main() {
  print(isAnagram("anagram", "nagaram"));
  print(isAnagram("rat", "car"));
}

bool isAnagram(String s, String t) {
  if (s.length != t.length) return false;

  Map<String, int> count = {};

  for (var ch in s.split('')) {
    count[ch] = (count[ch] ?? 0) + 1;
  }

  for (var ch in t.split('')) {
    if (!count.containsKey(ch)) return false;

    count[ch] = count[ch]! - 1;
    if (count[ch] == 0) {
      count.remove(ch);
    }
  }

  return count.isEmpty;
}
