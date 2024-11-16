// // Bài 1: Viết hàm để tính tiền điện hàng tháng dựa trên số kWh điện tiêu thụ theo cách
// // tính lũy kế sau:
// //  Giá cho 50 kWh đầu tiên là 1.678 đồng/kWh.
// //  Giá cho 50 kWh tiếp theo là 1.734 đồng/kWh.
// //   Giá cho 100 kWh tiếp theo là 2.014 đồng/kWh.
// //  Giá cho 100 kWh tiếp theo nữa là 2.536 đồng/kWh.
// //   Giá cho các kWh tiếp theo là 2.834 đồng/kWh.

double TinhTienDien(int sodien) {
  double tiendien = 0;
  if (sodien <= 50) {
    tiendien = sodien * 1678;
  } else if (sodien <= 100) {
    tiendien = (50 * 1678) + ((sodien - 50) * 1734);
  } else if (sodien <= 200) {
    tiendien = (50 * 1678) + (50 * 1734) + ((sodien - 100) * 2014);
  } else if (sodien <= 300) {
    tiendien =
        (50 * 1678) + (50 * 1734) + (100 * 2014) + ((sodien - 200) * 2536);
  } else {
    tiendien = (50 * 1678) +
        (50 * 1734) +
        (100 * 2014) +
        (100 * 2536) +
        ((sodien - 300) * 2834);
  }
  return tiendien;
}

void main() {
  int sodien = 350;
  print(sodien);
  double tiendien = TinhTienDien(sodien);
  print("số tiền phải trả với $sodien số điện là $tiendien");
}
