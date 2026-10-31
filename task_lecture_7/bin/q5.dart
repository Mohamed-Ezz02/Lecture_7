
// Q 5 

abstract class Product {
  String name;
  double price;

  Product(this.name, this.price);

  double calculateDiscount();
}

class Electronics extends Product {
  Electronics(String name, double price) : super(name, price);

  @override
  double calculateDiscount() {
    return price * 0.10;
  }
}

class Clothing extends Product {
  Clothing(String name, double price) : super(name, price);

  @override
  double calculateDiscount() {
    return price * 0.20;
  }
}

class ShoppingCart {
  final List<Product> _products = [];

  void addProduct(Product product) {
    _products.add(product);
  }

  void removeProduct(Product product) {
    _products.remove(product);
  }

  double calculateFinalTotal() {
    double total = 0.0;
    for (var product in _products) {
      double discount = product.calculateDiscount();
      total += (product.price - discount);
    }
    return total;
  }

  void displayCart() {
    for (var product in _products) {
      double discount = product.calculateDiscount();
      print('Product: ${product.name}, Original Price: \$${product.price}, Discount: \$$discount');
    }
  }
}

void main() {
  Product laptop = Electronics('Laptop', 1000.0);
  Product shirt = Clothing('T-Shirt', 50.0);

  ShoppingCart cart = ShoppingCart();

  cart.addProduct(laptop);
  cart.addProduct(shirt);

  cart.displayCart();

  double finalTotal = cart.calculateFinalTotal();
  print('Final Total After Discount: \$$finalTotal');
}

