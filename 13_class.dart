class Person {
  String name;
  int age;
  // default constructor
  Person(this.name, [this.age = 18]);

  // named constructor
  Person.guest() {
    name = 'Guest';
    age = 18;
  }

  void showOutput() {
    print(name);
    print(age);
  }
}

main() {
  Person person1 = Person('Jack', 30);
  person1.showOutput();
  var person2 = Person('Jill');
  person2.showOutput();
  var person3 = Person.guest();
  person3.showOutput();
}
