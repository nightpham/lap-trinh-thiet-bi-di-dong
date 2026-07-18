    import 'dart:io';

bool isPalindrome(String str) {
  int length = str.length;

  for (int i = 0; i < length ~/ 2; i++) {
    if (str[i] != str[length - 1 - i]) {
      return false;
    }
  }

  return true;
}

void main() {
  stdout.write("Nhập chuỗi: ");
  String str = stdin.readLineSync()!;

  if (isPalindrome(str)) {
    print("\"$str\" là chuỗi đối xứng.");
  } else {
    print("\"$str\" không phải chuỗi đối xứng.");
  }
}