import 'dart:convert';

void main(){
  var rawJson = '{"url": "http://blah.jpg", "id": 1}';
  
  var parsedJson = json.decode(rawJson);
  var imageModel = new ImageModel(parsedJson['id'], parsedJson['url']);
  
  print(imageModel.url);
  print(imageModel.id);
}

class ImageModel{
  int id;
  String url;
  
  ImageModel(this.id, this.url);
}
