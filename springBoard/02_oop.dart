// import 'dart:math';

// class Rectangle {
//   double length = 0;
//   double breadth = 0;
//   double diagonal = 0;

//   Rectangle() {
//     length = 30;
//     breadth = 20;
//   }

//   double diagonalc() => sqrt((length * length) + (breadth * breadth));

//   double rectArea(double length, double breadth) {
//     return (length * breadth);
//   }

//   double larCircArea(double width, double height) {
//     double circleRadius = min(width, height) / 2;
//     double circleArea = pi * pow(circleRadius, 2);

//     return circleArea;
//   }

//   void ratio(double rectangleArea, double circleArea) {
//     double ratio = rectangleArea / circleArea;
//     print('Ratio: $ratio');
//   }
// }

// void main() {
//   var rect = Rectangle();

//   var len = rect.length;
//   var brt = rect.breadth;
//   var diag = rect.diagonalc();

//   print('diag: $diag');

//   var rArea = rect.rectArea(len, brt);
//   var cArea = rect.larCircArea(len, brt);

//   rect.ratio(rArea, cArea);
// }

import 'dart:math';

class Rectangle {
  double length = 0;
  double breadth = 0;
  double diagonal = 0;

  Rectangle() {
    length = 30;
    breadth = 20;
    diagonal = calculateDiagonal();
  }

  double calculateDiagonal() => sqrt((length * length) + (breadth * breadth));

  double rectArea() => length * breadth;

  double larCircArea() {
    double circleRadius = min(length, breadth) / 2;
    double circleArea = pi * pow(circleRadius, 2);
    return circleArea;
  }

  void ratio(double rectangleArea, double circleArea) {
    double ratio = rectangleArea / circleArea;
    print('Ratio: $ratio');
  }
}

void main() {
  var rect = Rectangle();

  var rArea = rect.rectArea();
  var cArea = rect.larCircArea();

  rect.ratio(rArea, cArea);
}
