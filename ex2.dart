// Bài 2: Viết hàm để giải phương trình bậc hai.

import 'dart:math';

String Giaiptb2(double a, double b, double c) {
  if (a == 0) {
    if (b == 0) {
      if (c == 0) {
        return "phương trình vô số nghiệm";
      } else {
        return "phương tình vô nghiệm";
      }
    } else {
      double x = -c / b;
      return "phương trình có 1 nghiệm $x";
    }
  }
  double delta = b * b - 4 * a * c;
  if (delta < 0) {
    return "phương trình vô nghiệm";
  } else if (delta == 0) {
    double x = -b / (2 * a);
    return "phương trình có nghiệm kép $x";
  } else {
    double x1 = (-b + sqrt(delta)) / (2 * a);
    double x2 = (-b - sqrt(delta)) / (2 * a);
    return "phương trình có 2 nghiệm phân biệt: x1 = $x1 x2 = $x2";
  }
}

void main() {
  double a = 1;
  double b = -3;
  double c = 2;
  print(Giaiptb2(a, b, c));
}
