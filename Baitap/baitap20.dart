  // Bài 20: Đổi tiền tệ

import 'dart:io';

// Giả lập lấy tỷ giá từ API
Future<double> fetchExchangeRate() async {
  await Future.delayed(Duration(seconds: 1));

  return 25500.0;
}

Future<void> main() async {

  while (true) {

    stdout.write("Nhập số tiền USD (gõ exit để thoát): ");

    String input = stdin.readLineSync()!;

    if (input.toLowerCase() == "exit") {
      print("Kết thúc chương trình.");
      break;
    }

    try {

      double usd = double.parse(input);

      double rate;

      try {
        // Lấy tỷ giá từ API
        rate = await fetchExchangeRate();
      } catch (e) {
        print("Lỗi API! Dùng tỷ giá mặc định.");
        rate = 23000;
      }

      double vnd = usd * rate;

      print("Tỷ giá: $rate");
      print("$usd USD = $vnd VND");

    } catch (e) {
      print("Vui lòng nhập đúng số tiền.");
    }
  }
}
