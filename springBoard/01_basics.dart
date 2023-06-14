// class CarDealership {
//   int quantityModelX = 5;
//   double priceModelX = 50000;
//   int quantityModelZ = 3;
//   double priceModelZ = 60000;

//   bool validateCustomerAccountNo(int accountNo) {
//     String accountNoString = accountNo.toString();
//     return accountNoString.length == 6 && accountNoString.startsWith('10');
//   }

//   bool validateModel(String modelName) {
//     return modelName == "Model-X" || modelName == "Model-Z";
//   }

//   bool validateAvailability(String modelName) {
//     if (modelName == "Model-X") {
//       return quantityModelX > 0;
//     } else if (modelName == "Model-Z") {
//       return quantityModelZ > 0;
//     }
//     return false;
//   }

//   double calculateBillAmount(String modelName, double distance) {
//     double price;
//     if (modelName == "Model-X") {
//       price = priceModelX;
//     } else if (modelName == "Model-Z") {
//       price = priceModelZ;
//     } else {
//       return 0;
//     }

//     double gst = price * 0.24;
//     double shipmentFee = distance <= 50 ? 25 : 25 + (distance - 50) * 0.35;
//     double totalBill = price + gst + shipmentFee;
//     return totalBill;
//   }

//   bool validateBalance(double accountBalance, double billAmount) {
//     return accountBalance >= billAmount;
//   }

//   void purchaseCar(
//       int customerAccountNo, double customerAccountBalance, String model, double shippingDistance) {
//     if (!validateCustomerAccountNo(customerAccountNo)) {
//       print("Invalid customer account number");
//       return;
//     }

//     if (!validateModel(model)) {
//       print("Invalid car model");
//       return;
//     }

//     if (!validateAvailability(model)) {
//       print("Selected car model is not available");
//       return;
//     }

//     double billAmount = calculateBillAmount(model, shippingDistance);
//     if (!validateBalance(customerAccountBalance, billAmount)) {
//       print("Insufficient account balance");
//       return;
//     }

//     // Purchase successful
//     if (model == "Model-X") {
//       quantityModelX--;
//     } else if (model == "Model-Z") {
//       quantityModelZ--;
//     }

//     print("Purchase Successful!");
//     print("Model: $model");
//     print("Bill Amount: INR $billAmount");
//     print("Remaining Quantity of $model: ${model == "Model-X" ? quantityModelX : quantityModelZ}");
//   }
// }

// void main() {
//   CarDealership dealership = CarDealership();

//   // Example usage
//   int customerAccountNo = 100001;
//   double customerAccountBalance = 100000;
//   String model = "Model-X";
//   double shippingDistance = 60;

//   dealership.purchaseCar(customerAccountNo, customerAccountBalance, model, shippingDistance);

//   customerAccountNo = 100001;
//   customerAccountBalance = 100000;
//   model = "Model-X";
//   shippingDistance = 100;

//   dealership.purchaseCar(customerAccountNo, customerAccountBalance, model, shippingDistance);
// }

void main() {
  int quantityModelX = 5;
  double priceModelX = 50000;
  int quantityModelZ = 3;
  double priceModelZ = 60000;

  int customerAccountNo = 100001;
  double customerAccountBalance = 100000;
  String model = "Model-X";
  double shippingDistance = 60;

  // Validate customer account number
  String customerAccountNoString = customerAccountNo.toString();
  bool isCustomerAccountValid = customerAccountNoString.length == 6 &&
      customerAccountNoString.startsWith('10');

  // Validate car model
  bool isModelValid = model == "Model-X" || model == "Model-Z";

  // Validate availability
  bool isAvailabilityValid = false;
  if (model == "Model-X") {
    isAvailabilityValid = quantityModelX > 0;
  } else if (model == "Model-Z") {
    isAvailabilityValid = quantityModelZ > 0;
  }

  // Calculate bill amount
  double price;
  if (model == "Model-X") {
    price = priceModelX;
  } else if (model == "Model-Z") {
    price = priceModelZ;
  } else {
    print("Invalid car model");
    return;
  }

  double gst = price * 0.24;
  double shipmentFee =
      shippingDistance <= 50 ? 25 : 25 + (shippingDistance - 50) * 0.35;
  double totalBill = price + gst + shipmentFee;

  // Validate balance
  bool hasSufficientBalance = customerAccountBalance >= totalBill;

  if (!isCustomerAccountValid) {
    print("Invalid customer account number");
  } else if (!isModelValid) {
    print("Invalid car model");
  } else if (!isAvailabilityValid) {
    print("Selected car model is not available");
  } else if (!hasSufficientBalance) {
    print("Insufficient account balance");
  } else {
    // Purchase successful
    if (model == "Model-X") {
      quantityModelX--;
    } else if (model == "Model-Z") {
      quantityModelZ--;
    }

    print("Purchase Successful!");
    print("Model: $model");
    print("Bill Amount: INR $totalBill");
    print(
        "Remaining Quantity of $model: ${model == "Model-X" ? quantityModelX : quantityModelZ}");
  }
}
