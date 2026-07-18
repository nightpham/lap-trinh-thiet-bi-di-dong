  // Bài 14: Enum và Extension

// Tạo enum
enum Status {
  pending,
  approved,
  rejected,
  done,
}

// Extension cho enum
extension StatusExtension on Status {

  // Trả về tên tiếng Việt
  String getDisplayName() {
    switch (this) {
      case Status.pending:
        return "Đang chờ";

      case Status.approved:
        return "Đã duyệt";

      case Status.rejected:
        return "Từ chối";

      case Status.done:
        return "Hoàn thành";
    }
  }

  // Kiểm tra đã hoàn thành chưa
  bool isCompleted() {
    return this == Status.done;
  }
}

void main() {

  Status status = Status.done;

  print("Trạng thái: ${status.getDisplayName()}");

  print("Đã hoàn thành: ${status.isCompleted()}");

}