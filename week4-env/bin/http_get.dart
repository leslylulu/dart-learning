// https://random-data-api.com/projects/15c5ca28-dba6-45fd-bd27-16bd60c97676
// login the website to get the api key

// generate a random json data from the api
// url: https://random-data-api.com/api/v3/projects/15c5ca28-dba6-45fd-bd27-16bd60c97676?api_key=hqC__QAgNAwj6LYUj4berw
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Student{
  final String firstName;
  final String lastName;
  final String streetAddress;
  final String uuid;

  Student({required this.firstName, required this.lastName, required this.streetAddress, required this.uuid});

  factory Student.fromJson(Map<String, dynamic> json){
    return Student(
      firstName: json['first_name'],
      lastName: json['last_name'],
      streetAddress: json['city'],
      uuid: json['uuid']
    );
  }

}

void main() async{
  try{
		// var urlAddress = Uri.parse('https://dart.dev/f/packages/http.json');
    var urlAddress = Uri.parse('https://random-data-api.com/api/v3/projects/15c5ca28-dba6-45fd-bd27-16bd60c97676?api_key=0NP5d0J4JA93d4D6dGmQzA');
    // final info = await http.read(urlAddress); //info about the response
    final responseG = await http.get(urlAddress); // http get request
    // final responseP = await http.post(urlAddress); // http post request
		// print('Response status: ${responseG.statusCode}');
		// print('Response body: ${responseG.body}');
  

    Student student = Student.fromJson(convert.jsonDecode(responseG.body));
    print(responseG.body);
    print(student.firstName);
    print(student.lastName);
    print(student.streetAddress);
    print(student.uuid);

  }catch(err){
    print('Failed http request ');
  }
}