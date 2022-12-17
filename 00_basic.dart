void main() {
  // https://dart.dev/guides/language/type-system
  int number = 100;

  // if type is int or double use type num
  num number_diference = 10;
  number_diference = 10.0;

  if (number == 100) {
    print("equals");
  } else {
    print("it's not the same");
  }

  for (var i = 0; i < 5; i++) {
    print("$i");
  }

  // calling class
  final myClass = MyClass("calling class");
  myClass.myMethod();
}

class MyClass {
  final atributeClass = 100;
  final String non_constructor_defined_attribute;

  MyClass(this.non_constructor_defined_attribute);

  void myMethod() {
    print("Method");
  }

  MyClass get parent => MyClass("Parent");
}


class Heritage extends MyClass {
  Heritage(super.non_constructor_defined_attribute);

  @override
  Heritage get parent => Heritage("Heritage");

  // calling own class in method
  // sucess
  void calling(Object obj) {

  }

  // bad 
  void calling_bad(MyClass obj) {}
}