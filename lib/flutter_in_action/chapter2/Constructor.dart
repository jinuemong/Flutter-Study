
class Animal {
  late String name;
  late String type;

  Animal();
}

class Cat extends Animal {
  Cat();
}

void main(){
  Cat cat = Cat();
  cat.name = 'name';
  cat.type = '4';
}
class Energy {
  late int power;

  Energy(this.power); //기본 생성자

  //지정 생성자 : 새로운 객체를 항상 생성
  //여러 개의 생성자 제공
  //항상 새로운 객체 생성
  Energy.fromWind(int windBlows)
  : power = windBlows*2;

  // private 생성자
  Energy._internal(this.power);
  //싱글톤 객체
  static final Energy _instance= Energy._internal(0);
  //factory 생성자 : return을 사용해 새로운 객체 또는 기존 객체 반환
  //싱글톤 패턴, 캐싱, JSON 변환 등에 사용
  // 기존 객체 재사용
  factory Energy.singleton(){
    return _instance;
  }
}


enum Color{red,blue}

void updateColor(Color color){
  switch(color){
    case Color.red:
      print("red");
    case Color.blue:
      print("blue");
  }
}
