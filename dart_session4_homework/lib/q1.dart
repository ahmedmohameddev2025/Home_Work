// Q1
// Create a program that removes duplicate numbers from the list [5, 3, 5, 7, 3, 9] and prints how
// many unique numbers remain.
void main() {
  List<int> nums = [1, 2, 1, 5, 2, 4];
  Set<int> uniqueNumber = nums.toSet();
  print(uniqueNumber.length);
}
