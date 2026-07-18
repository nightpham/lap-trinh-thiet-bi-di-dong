  // Bài 5: Tìm số lớn thứ hai trong mảng
// Không sử dụng sort()

int findSecondLargest(List<int> numbers) {
  if (numbers.length < 2) {
    throw Exception("Danh sách phải có ít nhất 2 phần tử.");
  }

  int largest = numbers[0];
  int secondLargest = -999999999;

  for (int number in numbers) {
    if (number > largest) {
      secondLargest = largest;
      largest = number;
    } else if (number > secondLargest && number != largest) {
      secondLargest = number;
    }
  }

  if (secondLargest == -999999999) {
    throw Exception("Không tìm thấy số lớn thứ hai.");
  }

  return secondLargest;
}

void main() {
  List<int> numbers = [5, 1, 8, 3, 8, 2];

  print("Danh sách: $numbers");

  int result = findSecondLargest(numbers);

  print("Số lớn thứ hai là: $result");
}