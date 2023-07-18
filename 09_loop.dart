main() {
  // standard for loop
  for (var i = 0; i < 10; ++i) {
    print(i);
  }
  //for-in loop
  var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  for (var n in numbers) {
    print(n);
  }
  // forEach loop
  numbers.forEach((n) => print(n)); //arrow function
  // while loop
  int num = 5;
  while (num > 0) {
    print(num);
    num -= 1;
  }
  // do-while loop
  int num2 = 5;
  do {
    print(num2);
    num2 -= 1;
  } while (num2 > 0);
  // break
  for (var i = 0; i < 10; ++i) {
    if (i > 5) break;
    print(i);
  }
  // continue
  for (var i = 0; i < 10; ++i) {
    if (i % 2 == 0) continue;
    print("Odd: $i");
  }
}
