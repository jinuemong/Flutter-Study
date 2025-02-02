
class User {
  int? age;

  User(this.age);
}

void main() {
  // ?.
  User? user = User(25);

  print(user?.age);

  // ??
  int? age;
  int defaultAge = 18;

  int userAge = age ?? defaultAge ;
  print(userAge);

  // ??=
  int? number;
  number ??= 10;
  print(number);
  number ??= 20;
  print(number);
}
