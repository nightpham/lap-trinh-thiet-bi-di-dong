    import 'dart:io';

void main() {
  stdout.write("Nhập số nguyên n: ");
  int n = int.parse(stdin.readLineSync()!);

  int sum = 0;

  for (int i = 1; i <= n; i++) {
    if (i % 3 == 0) {
      sum += i;
    }
  }

  print("Tổng các số chia hết cho 3 từ 1 đến $n là: $sum");
}
