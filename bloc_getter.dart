import 'dart:async';

void main() {
  final bloc = new Bloc();
  
  bloc.emailController.stream.listen((value){
    print(value);
  });
  
  bloc.changeEmail('My New Email');
}

class Bloc {
  final emailController = StreamController<String>();
  
  get changeEmail => emailController.sink.add;
  
}
