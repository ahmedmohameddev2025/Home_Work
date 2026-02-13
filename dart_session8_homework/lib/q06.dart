// Q6
// Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
// An input string is valid if:
// 1. Open brackets must be closed by the same type of brackets.
// 2. Open brackets must be closed in the correct order.
// 3. Every close bracket has a corresponding open bracket of the same type.
// Examples:- '()' → Valid- '()[]{}' → Valid- '(]' → Invalid- '([)]' → Invalid- '{[]}' → Valid
void main() {
  print(isValid("()"));
  print(isValid("()[]{}"));
  print(isValid("(]"));
  print(isValid("([)]"));
  print(isValid("{[]}"));
}

bool isValid(String s) {
  List<String> stack = [];

  Map<String, String> pairs = {
    ')': '(',
    ']': '[',
    '}': '{',
  };

  for (var ch in s.split('')) {
    if (ch == '(' || ch == '[' || ch == '{') {
      stack.add(ch);
    } else {
      if (stack.isEmpty || stack.last != pairs[ch]) {
        return false;
      }
      stack.removeLast();
    }
  }

  return stack.isEmpty;
}
