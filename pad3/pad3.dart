class Person {
  String? name;
  int? age;
//   Person(String? name, int? age) {
//     this.name = name;
//     this.age = age;
//   }
//   Person({String? name, int? age}) {
//     this.name = name;
//     this.age = age;
//   }
    Person({this.name, this.age});
    
    Person.veryOld(this.name){
      this.age = 60;
    }

}

num addNumbers(double a, double b){
  return a+b;
}

void main() {
  num fR;
  fR = addNumbers(4,6);
  print(fR+1);
  Person p1 = Person(name:'l',age:2);
  print(p1.name);
  var p2 = Person(name:'l',age:1);
  p2.name = 'oogway';
  print(p2.name);
  Person p3 = Person.veryOld('Glen');
  print('${p3.name}, ${p3.age}');
}
