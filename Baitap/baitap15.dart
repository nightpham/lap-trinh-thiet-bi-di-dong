  // Bài 15: Xử lý ngoại lệ với Input từ bàn phím

import 'dart:io';

void main() {

  int number;

  while (true) {
    try {
      stdout.write("Nhập một số nguyên: ");

      number = int.parse(stdin.readLineSync()!);

      print("Bạn vừa nhập: $number");

      break; // Thoát vòng lặp nếu nhập đúng
    } catch (e) {
      print("Lỗi! Vui lòng nhập số nguyên.");
    }
  }

}
