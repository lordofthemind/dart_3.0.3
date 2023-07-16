import 'dart:io';

class Item {
  int serial;
  String name;
  String type;
  double price;
  int quantity;
  String slot;

  Item(this.serial, this.name, this.type, this.price, this.quantity, this.slot);
}

class Customer {
  String name;
  String contactNumber;

  Customer(this.name, this.contactNumber);
}

void main() {
  var loggedIn = false;
  var managerUsername = '';
  var managerPassword = '';

  var itemsList = <Item>[];
  var customerDetails = <String, Customer>{};

  while (!loggedIn) {
    print('Please sign up to create a new account:');
    stdout.write('Username: ');
    managerUsername = stdin.readLineSync()!;
    stdout.write('Password: ');
    managerPassword = stdin.readLineSync()!;
    loggedIn = true;
    print('Logged in successfully!\n');
  }

  while (loggedIn) {
    print('Select an option:');
    print('1. Manage Stocks');
    print('2. Take Order');
    print('3. Manage Customer');
    print('4. Logout');
    stdout.write('Enter your choice: ');
    var choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        manageStocks(itemsList);
        break;
      case 2:
        takeOrder(itemsList, customerDetails);
        break;
      case 3:
        manageCustomer(customerDetails);
        break;
      case 4:
        loggedIn = false;
        print('Logged out successfully!\n');
        break;
      default:
        print('Invalid choice! Please try again.\n');
    }
  }
}

void manageStocks(List<Item> itemsList) {
  print('Manage Stocks');
  stdout.write('Enter the name of the item: ');
  var name = stdin.readLineSync()!;
  stdout.write('Enter the type (veg or non-veg): ');
  var type = stdin.readLineSync()!;
  stdout.write('Enter the price per serving: ');
  var price = double.parse(stdin.readLineSync()!);
  stdout.write('Enter the available quantity: ');
  var quantity = int.parse(stdin.readLineSync()!);
  stdout.write('Enter the slot (Breakfast, Lunch, or Dinner): ');
  var slot = stdin.readLineSync()!;
  var serial = itemsList.length > 0 ? itemsList.last.serial + 1 : 101;

  var item = Item(serial, name, type, price, quantity, slot);
  itemsList.add(item);
  print('Item added successfully!\n');
}

void takeOrder(List<Item> itemsList, Map<String, Customer> customerDetails) {
  print('Take Order');
  stdout.write('Enter the contact number of the customer: ');
  var contactNumber = stdin.readLineSync()!;
  var customerName = '';
  var lastOrder = '';

  if (!customerDetails.containsKey(contactNumber)) {
    stdout.write('Enter the name of the customer: ');
    customerName = stdin.readLineSync()!;
    customerDetails[contactNumber] = Customer(customerName, contactNumber);
  } else {
    var customer = customerDetails[contactNumber]!;
    customerName = customer.name;
    lastOrder = 'Last Order: ...'; // Get the last order details
  }

  // Show available items for the slot
  print('Available items:');
  for (var item in itemsList) {
    if (item.slot == 'Breakfast') {
      print('Serial: ${item.serial}, Name: ${item.name}, Price: ${item.price}');
    }
  }

  stdout.write('Enter the serial number of the item: ');
  var serial = int.parse(stdin.readLineSync()!);
  var item = itemsList.firstWhere((item) => item.serial == serial, orElse: () => Item(0, '', '', 0.0, 0, ''));
  if (item.serial == 0) {
    print('Invalid serial number!\n');
    return;
  }

  stdout.write('Enter the quantity required: ');
  var quantity = int.parse(stdin.readLineSync()!);
  if (quantity > item.quantity) {
    print('Insufficient quantity!\n');
    return;
  }

  // Calculate order value and apply discounts
  var orderValue = item.price * quantity;
  var discount = 0.0;
  if (orderValue > 1000) {
    discount = orderValue * 0.05;
  } else if (orderValue > 500) {
    discount = orderValue * 0.025;
  }
  var gst = orderValue * 0.05;
  var total = orderValue - discount + gst;

  // Update item quantity
  item.quantity -= quantity;

  print('Order placed successfully!');
  print('Customer: $customerName');
  print(lastOrder);
  print('Item: ${item.name}');
  print('Quantity: $quantity');
  print('Order Value: $orderValue');
  print('Discount: $discount');
  print('GST: $gst');
  print('Total: $total\n');
}

void manageCustomer(Map<String, Customer> customerDetails) {
  print('Manage Customer');
  stdout.write('Enter the contact number of the customer: ');
  var contactNumber = stdin.readLineSync()!;

  if (customerDetails.containsKey(contactNumber)) {
    var customer = customerDetails[contactNumber]!;
    print('Customer Details:');
    print('Name: ${customer.name}');
    stdout.write('Do you want to update the name? (y/n): ');
    var updateName = stdin.readLineSync()!;
    if (updateName.toLowerCase() == 'y') {
      stdout.write('Enter the new name: ');
      var newName = stdin.readLineSync()!;
      customer.name = newName;
    }

    stdout.write('Do you want to delete the customer? (y/n): ');
    var deleteCustomer = stdin.readLineSync()!;
    if (deleteCustomer.toLowerCase() == 'y') {
      customerDetails.remove(contactNumber);
      print('Customer deleted successfully!\n');
      return;
    }
  } else {
    print('Customer not found!\n');
  }
}
