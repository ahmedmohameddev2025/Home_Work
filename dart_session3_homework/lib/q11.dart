// Question 11
// Write a Dart program that applies discounts to a price. Use nested if/else to apply different
// discounts based on whether the user is a student, has a coupon, or if the price is above a threshold.
// Print the final price.
void main() {
  bool isStudent = true;
  bool hasCoupon = true;
  double price = 180;
  if (isStudent) {
    price *= 0.7; //30%
  } else if (hasCoupon) {
    price *= 0.8; //20%
  } else if (price > 100) {
    price *= 0.9; //10%
  }
  print('The final price: $price');
}
