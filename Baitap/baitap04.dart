  import 'dart:io';

void main() {
  List<String> todoList = [];
  bool running = true;

  while (running) {
    print("\n===== TODO LIST =====");
    print("1. Thêm công việc");
    print("2. Xóa công việc");
    print("3. Hiển thị danh sách");
    print("4. Thoát");

    stdout.write("Chọn chức năng: ");
    int choice = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

    switch (choice) {
      case 1:
        stdout.write("Nhập tên công việc: ");
        String job = stdin.readLineSync() ?? "";

        if (job.isNotEmpty) {
          todoList.add(job);
          print("Đã thêm công việc.");
        } else {
          print("Tên công việc không được để trống.");
        }
        break;

      case 2:
        stdout.write("Nhập tên công việc cần xóa: ");
        String job = stdin.readLineSync() ?? "";

        if (todoList.remove(job)) {
          print("Đã xóa công việc.");
        } else {
          print("Không tìm thấy công việc.");
        }
        break;

      case 3:
        if (todoList.isEmpty) {
          print("Danh sách trống.");
        } else {
          print("\nDanh sách công việc:");
          for (int i = 0; i < todoList.length; i++) {
            print("${i + 1}. ${todoList[i]}");
          }
        }
        break;

      case 4:
        running = false;
        print("Kết thúc chương trình.");
        break;

      default:
        print("Lựa chọn không hợp lệ.");
    }
  }
}
