// Bài 16: Future & Async/Await

// Giả lập lấy tên người dùng
Future<String> fetchUserName() async {
  await Future.delayed(Duration(seconds: 2));
  return "Nguyen Van A";
}

// Giả lập lấy số dư
Future<double> fetchUserBalance() async {
  await Future.delayed(Duration(seconds: 1));
  return 1500.5;
}

Future<void> main() async {

  // Gọi tuần tự
  Stopwatch sw1 = Stopwatch()..start();

  String name1 = await fetchUserName();
  double balance1 = await fetchUserBalance();

  sw1.stop();

  print("=== Gọi tuần tự ===");
  print("Tên: $name1");
  print("Số dư: $balance1");
  print("Thời gian: ${sw1.elapsed.inSeconds} giây\n");

  // Gọi đồng thời
  Stopwatch sw2 = Stopwatch()..start();

  List<dynamic> results = await Future.wait([
    fetchUserName(),
    fetchUserBalance(),
  ]);

  sw2.stop();

  print("=== Future.wait ===");
  print("Tên: ${results[0]}");
  print("Số dư: ${results[1]}");
  print("Thời gian: ${sw2.elapsed.inSeconds} giây");
}