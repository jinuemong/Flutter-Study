
import 'dart:io';

void main() {
  stdout.writeln('Greet Somebody');
  String? input = stdin.readLineSync();
  return helloDart(input);
}

void helloDart(String? name){
  if (name == null) return;
  print('Hello, $name');
}
