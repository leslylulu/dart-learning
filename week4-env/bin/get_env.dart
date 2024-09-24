import 'dart:io';

void main(){
	// var min = int.parse(Platform.environment['MIN']!);
	// var max = int.parse(Platform.environment['MAX']!);
	// print('MIN: $min');
	// print('MAX: $max');
	print(Platform.environment['MIN']);
	print(Platform.environment['MAX']);

}

//* on the terminal
/**
	1. export MIN=10
	2. export MAX=20
	> 3. echo $MIN
	10
	> 4. echo $MAX
	20
 */
