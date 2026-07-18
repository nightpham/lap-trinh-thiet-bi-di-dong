  // Bài 9: Quản lý giỏ hàng

// Lớp sản phẩm
class Product {
  String id;
  String name;
  double price;

  Product(this.id, this.name, this.price);
}

// Lớp giỏ hàng
class Cart {

  // Danh sách sản phẩm
  List<Product> items = [];

  // Thêm sản phẩm
  void addProduct(Product p) {
    items.add(p);
  }

  // Xóa sản phẩm theo id
  void removeProduct(String id) {
    items.removeWhere((product) => product.id == id);
  }

  // Tính tổng tiền
  double getTotal() {
    double total = 0;

    for (Product p in items) {
      total += p.price;
    }

    return total;
  }

  // Hiển thị giỏ hàng
  void displayCart() {

    print("===== GIỎ HÀNG =====");

    for (Product p in items) {
      print("${p.id} - ${p.name} - ${p.price} VNĐ");
    }

    print("Tổng tiền: ${getTotal()} VNĐ");
  }
}

void main() {

  // Tạo giỏ hàng
  Cart cart = Cart();

  // Thêm sản phẩm
  cart.addProduct(Product("SP01", "Bàn phím", 350000));
  cart.addProduct(Product("SP02", "Chuột", 150000));
  cart.addProduct(Product("SP03", "Tai nghe", 500000));

  // Hiển thị
  cart.displayCart();

  // Xóa sản phẩm
  cart.removeProduct("SP02");

  print("\nSau khi xóa:\n");

  // Hiển thị lại
  cart.displayCart();
}