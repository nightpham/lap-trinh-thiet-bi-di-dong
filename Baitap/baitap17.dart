  // Bài 17: Stream đếm ngược

// Tạo Stream đếm ngược
Stream<int> countdown() async* {

  for (int i = 10; i >= 0; i--) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }

}

Future<void> main() async {

  await for (int number in countdown()) {
    print(number);
  }

  print("Kết thúc!");
}