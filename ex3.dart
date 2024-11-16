// Bài 3: Viết hàm tính ước chung lớn nhất (UCLN) và bội chung nhỏ nhất (BCNN) của
// hai số.
void main() {
  int number1 = 12;
  int number2 = 18;
  int UCLN = UocChungLonNhat(number1, number2);
  int BCNN = BoiChungNhoNhat(number1, number2);
  print(UCLN);
  print(BCNN);
}

int UocChungLonNhat(int a, int b) {
  while (b != 0) {
    int temp = b;
    b = a % b;
    a = temp;
  }
  return a;
}

int BoiChungNhoNhat(int a, int b) {
  if (a == 0 || b == 0) {
    return 0;
  } else {
    return a.abs() ~/ UocChungLonNhat(a, b) * b.abs();
  }
}
