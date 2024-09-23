import 'package:week4_env/week4_env.dart' as week4_env;
import "dart:math";

void main(List<String> arguments) {
  print('Hello world: ${week4_env.calculate()}!');
  var random = new Random();
  var n;
  // REVIEW Without nextInt, 
  // the Random class doesn't have a way to know the range or type of random values to generate.
  // print(random.nextInt(100));
  for(var i = 0; i < 10; i++) {
    n = random.nextInt(100);
    // n = (random.nextDouble() * 100).roundToDouble();
    print(n);
  }
}
