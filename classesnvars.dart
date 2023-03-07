class Person {
  String name = 'Max';
  int age = 69;
}

num addNumbers(double a, double b){
  return a+b;
}

void main() {
  num fR;
  fR = addNumbers(4,6);
  print(fR+1);
  Person p1 = Person();
  print(p1.name);
  var p2 = Person();
  p2.name = 'oogway';
  print(p2.name);
}
