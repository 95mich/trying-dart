void main(){
  var person = new Person('Ichsan');
  
  person.printName();
}

class Person{
  String firstName;
  
  Person(this.firstName);
  
  printName(){
    print(firstName);
  }
}
