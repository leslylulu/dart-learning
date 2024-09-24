// https://random-data-api.com/projects/15c5ca28-dba6-45fd-bd27-16bd60c97676
// login the website to get the api key

// generate a random json data from the api
// url: https://random-data-api.com/api/v3/projects/15c5ca28-dba6-45fd-bd27-16bd60c97676?api_key=hqC__QAgNAwj6LYUj4berw
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() async{
  try{
		var urlAddress = Uri.parse('https://dart.dev/f/packages/http.json');
    // var urlAddress = Uri.parse('https://random-data-api.com/api/v3/projects/15c5ca28-dba6-45fd-bd27-16bd60c97676?api_key=0NP5d0J4JA93d4D6dGmQzA');
    final info = await http.read(urlAddress); //info about the response
    final responseG = await http.get(urlAddress); // http get request
    final responseP = await http.post(urlAddress); // http post request
		print('Response status: ${responseG.statusCode}');
		print('Response body: ${responseG.body}');
  }catch(err){
    print('Failed http request ');
  }
}