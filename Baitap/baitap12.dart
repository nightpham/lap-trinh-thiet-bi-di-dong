  // Bài 12: Sử dụng Mixin

// Mixin Logger
mixin Logger {

  void log(String message) {
    print("${DateTime.now()} : $message");
  }

}

// Mixin Validator
mixin Validator {

  bool isValidEmail(String email) {
    return email.contains("@") && email.contains(".");
  }

}

// Sử dụng 2 mixin
class UserService with Logger, Validator {}

void main() {

  UserService user = UserService();

  // Ghi log
  user.log("Đăng nhập thành công");

  // Kiểm tra email
  String email = "abc@gmail.com";

  if (user.isValidEmail(email)) {
    print("$email là email hợp lệ");
  } else {
    print("$email không hợp lệ");
  }

}
