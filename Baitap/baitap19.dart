  // Bài 19: Quản lý thư viện

import 'dart:io';

// Lớp Book
class Book {
  String id;
  String name;
  String author;
  String year;

  Book(this.id, this.name, this.author, this.year);
}

void main() {
  List<Book> books = [];

  // Đọc dữ liệu từ file khi khởi động
  File file = File("books.txt");

  if (file.existsSync()) {
    List<String> lines = file.readAsLinesSync();

    for (String line in lines) {
      List<String> data = line.split(",");

      books.add(Book(
        data[0],
        data[1],
        data[2],
        data[3],
      ));
    }
  }

  while (true) {
    print("\n===== QUẢN LÝ THƯ VIỆN =====");
    print("1. Thêm sách");
    print("2. Hiển thị sách");
    print("3. Tìm sách");
    print("4. Xóa sách");
    print("5. Lưu vào file");
    print("0. Thoát");

    stdout.write("Chọn: ");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {

      // Thêm sách
      case 1:
        stdout.write("Mã sách: ");
        String id = stdin.readLineSync()!;

        stdout.write("Tên sách: ");
        String name = stdin.readLineSync()!;

        stdout.write("Tác giả: ");
        String author = stdin.readLineSync()!;

        stdout.write("Năm XB: ");
        String year = stdin.readLineSync()!;

        books.add(Book(id, name, author, year));

        print("Đã thêm sách!");
        break;

      // Hiển thị
      case 2:
        print("\n===== DANH SÁCH SÁCH =====");

        for (Book b in books) {
          print("${b.id} - ${b.name} - ${b.author} - ${b.year}");
        }
        break;

      // Tìm sách
      case 3:
        stdout.write("Nhập tên hoặc tác giả: ");
        String keyword = stdin.readLineSync()!;

        for (Book b in books) {
          if (b.name.contains(keyword) ||
              b.author.contains(keyword)) {
            print("${b.id} - ${b.name} - ${b.author} - ${b.year}");
          }
        }
        break;

      // Xóa
      case 4:
        stdout.write("Nhập mã sách: ");
        String id = stdin.readLineSync()!;

        books.removeWhere((b) => b.id == id);

        print("Đã xóa!");
        break;

      // Lưu file
      case 5:
        try {
          List<String> data = [];

          for (Book b in books) {
            data.add("${b.id},${b.name},${b.author},${b.year}");
          }

          file.writeAsStringSync(data.join("\n"));

          print("Lưu file thành công!");
        } catch (e) {
          print("Lỗi khi lưu file!");
        }
        break;

      // Thoát
      case 0:
        print("Kết thúc chương trình.");
        return;

      default:
        print("Lựa chọn không hợp lệ!");
    }
  }
}