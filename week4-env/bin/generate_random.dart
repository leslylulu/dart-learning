import 'dart:io';
import 'dart:math';

class MinMax{
	// COMMENT: late keyword is used to tell the compiler that the value is not null
	int min, max;
	late int random;

	// COMMENT: initializer list is used to initialize the variables before the constructor body
	MinMax():min = int.parse(Platform.environment['MIN'] ?? "200"), max = int.parse(Platform.environment['MAX'] ?? "300"){
		var rng = Random();
		random = rng.nextInt(max - min) + min;
		print('MIN: $min');
		print('MAX: $max');
	}
}

void main(){
	var randomNumber = MinMax();
	print('Random Number: ${randomNumber.random}');
}