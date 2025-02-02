//단축 표현식 : 함수 바디에 한 행의 코드를 구현
String makeGreeting(String name) => 'Hello, $name';

//이름 지정
void debugger({required String message,required int lineNum}) {
  debugger(message:'A',lineNum:44);
}

//고차 함수와 추상화
List<int> nums = [1,2,3];

void printNum(int num) => print(num);

void printNumbers(List<int> nums){
  nums.forEach(printNum);
}
