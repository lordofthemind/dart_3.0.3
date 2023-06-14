main() {
  // list ordered, indexed
  List names = ['Jack', 'Jill', 'John', 'Jeremy', 'Jenny', 100, 102, 103];
  List<String> namesy = ['Jack', 'Jill', 'John', 'Jeremy', 'Jenny'];
  print(names.length);
  print(names[0]);
  for (var n in names) {
    print(n);
  }
  var names2 = [...names]; // spread operator
  names2[0] = 'Jacky';
  print(names);
  print(names2);
  // set unordered, unique
  var halogens = {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
    'astatine'
  };
  for (var x in halogens) {
    print(x);
  }
  // map key-value pairs
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };
  print(gifts['fifth']);
  print(gifts.length);
  print(gifts.keys);
  print(gifts.values);
  print(gifts.entries);

  var gifts2 = Map();
  gifts2['first'] = 'partridge';
  gifts2['second'] = 'turtledoves';
  gifts2['fifth'] = 'golden rings';
  print(gifts2);
  print(gifts2['fifth']);
  print(gifts2.length);
  print(gifts2.keys);
}
