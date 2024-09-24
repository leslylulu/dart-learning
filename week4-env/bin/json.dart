
import'dart:convert';
import 'dart:io';



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