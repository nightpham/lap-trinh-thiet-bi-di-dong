  // Bài 13: Singleton Pattern

class DatabaseConnection {

  // Constructor private
  DatabaseConnection._();

  // Tạo duy nhất một đối tượng
  static final DatabaseConnection _instance = DatabaseConnection._();

  // Hàm lấy đối tượng
  static DatabaseConnection getInstance() {
    return _instance;
  }

  // Kết nối
  void connect() {
    print("Connected to database");
  }

  // Ngắt kết nối
  void disconnect() {
    print("Disconnected");
  }
}

void main() {

  // Lấy 2 đối tượng
  DatabaseConnection db1 = DatabaseConnection.getInstance();
  DatabaseConnection db2 = DatabaseConnection.getInstance();

  // Kiểm tra có cùng một đối tượng không
  print("Hai đối tượng giống nhau: ${identical(db1, db2)}");

  // Kết nối
  db1.connect();

  // Ngắt kết nối
  db2.disconnect();
}
