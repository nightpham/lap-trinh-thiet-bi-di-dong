  // Bài 7: Ghép danh sách và loại bỏ trùng lặp

void main() {

  // Hai danh sách ban đầu
  List<int> list1 = [1, 2, 3, 4, 5];
  List<int> list2 = [3, 4, 5, 6, 7];

  // Hợp của hai danh sách (không trùng lặp)
  List<int> hop = {...list1, ...list2}.toList();

  // Giao của hai danh sách
  List<int> giao = list1.where((item) => list2.contains(item)).toList();

  // In kết quả
  print("Danh sách 1: $list1");
  print("Danh sách 2: $list2");

  print("\nHợp của hai danh sách: $hop");
  print("Giao của hai danh sách: $giao");
}
