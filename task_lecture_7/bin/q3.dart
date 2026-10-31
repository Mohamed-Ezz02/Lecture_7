// Q3

abstract class PaymentMethod {
  void pay(double amount);
}

class CreditCardPayment extends PaymentMethod {
  @override
  void pay(double amount) {
    print('Paid \$${amount.toStringAsFixed(2)} using Credit Card.');
  }
}

class CashPayment extends PaymentMethod {
  @override
  void pay(double amount) {
    print('Paid \$${amount.toStringAsFixed(2)} in Cash.');
  }
}

void main() {
  
  PaymentMethod cardPayment = CreditCardPayment();
  PaymentMethod cashPayment = CashPayment();

  cardPayment.pay(150.0);
  cashPayment.pay(45.5);
}