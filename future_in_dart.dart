import 'dart:async';

main () async {
  print('About to fetch data...');
  
  /***** OLD WAY
   
  get('http:/jasfhjashfj')
    .then((result) {
      print(result);
    });
    
  ********/
  
  var result = await get('http:/jasfhjashfj');
  
  print(result);
}

Future<String> get(String url) {
  return new Future.delayed(new Duration(seconds: 3), () {
    return 'Got the data!';
  });
}
