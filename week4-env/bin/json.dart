// import 'package:http/http.dart' as http;
// import 'dart:convert' as convert;
import'dart:convert';
import 'dart:io';

// void main() async{
//   try{
//     var uri = Uri.parse('https://dart.dev/f/packages/http.json');
//     final info = await http.read(uri); //info about the response
//     final responseG = await http.get(uri); // http get request
//     final responseP = await http.post(uri); // http post request
// 		print('Response status: ${responseG.statusCode}');
// 		print('Response body: ${responseG.body}');
//   }catch(err){
//     print('Failed http request ');
//   }
// }

void main() {
	Map<String, dynamic> user = {
		'name': 'John Doe',
		'age': 30,
		'roles': ['Admin', 'User'],
		'isVerified': false
	};
	// key without double quotes
	print(user); // {name: John Doe, age: 30, roles: [Admin, User], isVerified: false}
	print(user['name']); // John Doe
	String jsonString = json.encode(user);
	// key with double quotes
	print(jsonString); // {"name":"John Doe","age":30,"roles":["Admin","User"],"isVerified":false}
	var user2 = json.decode(jsonString);
	print(user2); // {name: John Doe, age: 30, roles: [Admin, User], isVerified: false}
}