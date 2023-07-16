class Employee {
  int employeeId;
  String name;
  String role;
  String location;

  Employee(this.employeeId, this.name, this.role, this.location);

  void display() {
    print('Employee ID: $employeeId');
    print('Name: $name');
    print('Role: $role');
    print('Location: $location');
    print('---------------------');
  }
}

void main() {
  var salaryMap = {
    'Manager': 800000,
    'Engineer': 600000,
    'Analyst': 400000,
  };

  var employeeList = [
    Employee(1, 'John Doe', 'Manager', 'Delhi'),
    Employee(2, 'Jane Smith', 'Engineer', 'Mumbai'),
    Employee(3, 'Alex Johnson', 'Analyst', 'Bangalore'),
    // Add more employees here
  ];

  double minimumSalary = 500000;
  for (var employee in employeeList) {
    var salary = salaryMap[employee.role];
    if (salary != null && salary > minimumSalary) {
      employee.display();
    }
  }
}
