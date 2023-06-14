main() {
  int num = 20;
  print(num);
  num = num - 2;
  print(num);
  num = num % 2;
  print(num);

  // relational ==, !=, >=, <=
  if (num == 0) {
    print('Zero');
  }

  num = 100;
  num *= 2;
  print(num);

  // unary operator
  ++num;
  num++;
  num += 1;
  num -= 1;
  print(num);

  //logical && and logical || or
  if (num > 200 && num < 203) {
    print('200 to 202');
  }

  // != not Equal
  if (num != 100) {
    print('num is not equal to 100');
  }

  // ternary operator
  print('Ternary Operator:');
  int x = 100;
  var result = x % 2 == 0 ? 'Even' : 'Odd';
  print(result);
}
