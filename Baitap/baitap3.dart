  void main() {
  for (int i = 2; i <= 9; i++) {
    for (int j = 1; j <= 10; j++) {
      String phepTinh = "$i x $j = ${i * j}";
      print(phepTinh.padRight(15));
    }

    print(""); // Dòng trống giữa các bảng cửu chương
  }
}
