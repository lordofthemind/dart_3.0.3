class InvalidQuantityException implements Exception {
  @override
  String toString() => 'Invalid quantity provided.';
}

class InvalidPriceException implements Exception {
  @override
  String toString() => 'Invalid price provided.';
}

class Order {
  int quantity;
  String itemName;
  String itemType;
  double itemPrice;
  bool customization;

  Order(this.quantity, this.itemName, this.itemType, this.itemPrice, this.customization);

  String displayCombo() {
    return 'Combo: $itemName ($itemType)';
  }

  Function placeOrder() {
    return () {
      try {
        if (quantity == null || quantity <= 0) {
          throw InvalidQuantityException();
        }
        if (itemPrice == null || itemPrice <= 0) {
          throw InvalidPriceException();
        }

        double totalCost = quantity * itemPrice;
        print('Order placed for $quantity $itemName ($itemType).');
        print('Customization: ${customization ? 'Yes' : 'No'}');
        print('Total Cost: $totalCost');
      } catch (e) {
        print(e.toString());
      }
    };
  }
}

void main() {
  var order = Order(2, 'Pizza', 'V', 10.99, true);

  String combo = order.displayCombo();
  print(combo);

  var placeOrderClosure = order.placeOrder();
  placeOrderClosure();
}
