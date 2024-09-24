import 'package:week4_env/week4_env.dart' as week4_env;
import "dart:math";

loop(){
  var n;
  var random = new Random();

  for(var i = 0; i < 10; i++) {
    // REVIEW Without nextInt, 
    // the Random class doesn't have a way to know the range or type of random values to generate.
    // print(random.nextInt(100));
    n = random.nextInt(100);
    // n = (random.nextDouble() * 100).roundToDouble();
    print(n);
  }
}


void main(List<String> arguments) {
  print('Hello world: ${week4_env.calculate()}!');
  // randomNumberRange rang is from 10 to 19
  int n = randomNumberRange(min:10, max:20);
  print(n);
}

int randomNumberRange({required int min, required int max}){
  var random = Random();
  int n = random.nextInt(max - min) + min;
  return n;
}


