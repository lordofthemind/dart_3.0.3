main(){
  print(sayHello('Jack'));
  print(sayHello('Jack', 'How are you?'));
  print(sayHello2(name: 'Jack', msg: 'How are you?'));
}

// positional parameters
String sayHello(String name, [String? msg]){
  return "Hello $name $msg";
}

// named parameters
String sayHello2({String? name, String? msg}){
  return "Hello $name $msg";
}

dynamic sum(var num1, var num2) => num1 + num2;