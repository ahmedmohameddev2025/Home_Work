// Question 14
// Write a Dart program that works with a nullable list of integers. If the list is null or empty, print 'No
// scores'. Otherwise, calculate and print the sum of the first and last elements and check if it is
// greater than or equal to 40.
void main() {
  List<int>? numbers = [
    10,
    20,
    30,
    40,
    50,
  ]; //القائمة(numbers) نفسها ممكن تكون ? null
  if (numbers == null || numbers.isEmpty) {
    print('No scores');
  } else {
    int sum = numbers.first + numbers.last;
    print('The sum is $sum');

    print(sum>=40);
  }

}
