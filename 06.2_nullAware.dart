// Null Aware Operator
// (?.), (??), (??=)

class Num {
  int num = 10;
}

// main() {
//   var n = Num();
//   int number;

//   number = n?.num ?? 0; // if n is null, then number is null
//   print(number);
//   number = n?.num ?? 0; // if n is null, then number is null
//   print(number);
// }

main() {
  int number;
  print(number ??= 100); // if number is null, then number is 100
  print(number);
}
