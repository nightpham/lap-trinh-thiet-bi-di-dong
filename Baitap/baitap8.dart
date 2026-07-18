  import 'dart:io';

void main() {

  // Nhập câu
  stdout.write("Nhập một câu: ");
  String sentence = stdin.readLineSync()!;

  // Chuyển thành chữ thường
  sentence = sentence.toLowerCase();

  // Tách các từ
  List<String> words = sentence.split(' ');

  // Map lưu số lần xuất hiện
  Map<String, int> count = {};

  // Đếm số lần xuất hiện
  for (String word in words) {
    if (count.containsKey(word)) {
      count[word] = count[word]! + 1;
    } else {
      count[word] = 1;
    }
  }

  // In kết quả
  print("\nSố lần xuất hiện của từng từ:");

  count.forEach((key, value) {
    print("$key : $value");
  });
}