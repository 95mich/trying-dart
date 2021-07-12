import 'dart:async';

void main() {
  final bloc = new Bloc();
  
  bloc.email.listen((value){
    print(value);
  });
  
  bloc.changeEmail('My New Email');
}

class Bloc {
  final emailController = StreamController<String>();
  
  //GETTER TO MAKE IT EASIER TO CALL
  get changeEmail => emailController.sink.add;
  get email => emailController.stream;
}
