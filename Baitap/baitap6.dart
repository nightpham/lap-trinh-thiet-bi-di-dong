  import 'dart:io';

// Map dùng để lưu kết quả đã tính
Map<int, int> memo = {};

// Hàm Fibonacci có Memoization
int fibonacciMemo(int n) {
  if (n <= 1) {
    return n;
  }

  // Nếu đã có trong Map thì trả về luôn
  if (memo.containsKey(n)) {
    return memo[n]!;
  }

  // Tính và lưu vào Map
  memo[n] = fibonacciMemo(n - 1) + fibonacciMemo(n - 2);

  return memo[n]!;
}

// Hàm Fibonacci thông thường
int fibonacci(int n) {
  if (n <= 1) {
    return n;
  }

  return fibonacci(n - 1) + fibonacci(n - 2);
}

void main() {

  stdout.write("Nhập n: ");
  int n = int.parse(stdin.readLineSync()!);

  // Đo thời gian hàm thường
  Stopwatch sw1 = Stopwatch()..start();
  int result1 = fibonacci(n);
  sw1.stop();

  // Đo thời gian hàm Memoization
  Stopwatch sw2 = Stopwatch()..start();
  int result2 = fibonacciMemo(n);
  sw2.stop();

  print("\nKết quả Fibonacci thường: $result1");
  print("Thời gian: ${sw1.elapsedMilliseconds} ms");

  print("\nKết quả Fibonacci Memoization: $result2");
  print("Thời gian: ${sw2.elapsedMilliseconds} ms");
}