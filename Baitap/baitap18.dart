  // Bài 18: Functional Programming

class Student {
  String name;
  double score;
  String major;

  Student(this.name, this.score, this.major);
}

void main() {

  // Danh sách sinh viên
  List<Student> students = [
    Student("An", 8.5, "CNTT"),
    Student("Bình", 7.0, "CNTT"),
    Student("Cường", 9.2, "CNTT"),
    Student("Dung", 8.8, "Kinh tế"),
    Student("Hà", 9.5, "CNTT"),
    Student("Lan", 7.8, "Marketing"),
  ];

  // 1. Lọc sinh viên CNTT có điểm >= 8
  List<Student> result = students
      .where((student) => student.major == "CNTT" && student.score >= 8)
      .toList();

  // 2. Sắp xếp theo điểm giảm dần
  result.sort((a, b) => b.score.compareTo(a.score));

  // 3. Lấy top 3 sinh viên
  print("Top 3 sinh viên:");

  result.take(3).forEach((student) {
    print(student.name);
  });

  // 4. Tính điểm trung bình
  double average =
      students.map((student) => student.score).reduce((a, b) => a + b) /
          students.length;

  print("\nĐiểm trung bình: ${average.toStringAsFixed(2)}");
}