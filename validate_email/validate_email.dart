import 'dart:html';
import 'dart:async';

void main(){
  final InputElement input = querySelector('input');
  final DivElement div = querySelector('div');
  
  final validator = new StreamTransformer.fromHandlers(
    handleData: (inputValue, sink) {
      if (inputValue.contains('@')) {
      sink.add(inputValue);
      } else{
      sink.addError('Enter a valid email');
      }
    }
  );
  
  input.onInput
    .map((dynamic event) => event.target.value)
    .transform(validator)
    // YOU CAN ADD ANY TYPE OF VALIDATOR
    //.transform(validatePass)
    //.transform(validateEmail)
    .listen(
      (inputValue) => div.innerHtml = '',
      onError: (err) => div.innerHtml = err
    );
}
