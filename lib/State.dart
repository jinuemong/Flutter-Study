
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: StateBody(),
    ),
  ));
}

class StateBody extends StatelessWidget {
  const StateBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        children: [
          ExampleStateFul(index : 3 ),
          ExampleStateless(),
        ]
    );
  }
}

// 별도의 statefull 객체를 통해서 상태를 바꿀 수 있음
class ExampleStateFul extends StatefulWidget {
  final int index;
  const ExampleStateFul({required this.index, super.key});

  @override // 별도의 state 객체 생성
  State<StatefulWidget> createState() => _ExampleStatefulState();

}

// state 저장 할 위젯
// 모든 변수를 상태 객체 안에 넣어줘야 함
class _ExampleStatefulState extends State<ExampleStateFul> {
  late int _index; //_index를 활용해서 인덱스 재선언
  late TextEditingController textEditingController; //늦은 초기화

  // 초기값 선언
  @override
  void initState() {
    super.initState(); // 반드시 호출 필요
    _index = widget.index; // 파라미터로 받은 값 처기화
    textEditingController = TextEditingController();
  }

  // 해제 함수
  @override
  void dispose() {
    textEditingController.dispose(); // 리소스를 잡아먹는 것을 방지
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () { //위젯 안에서 특정 액션을 감지
          setState(() { // state 변화를 명시
            if (_index == 5) {
              _index = 0;
              return;
            }

            _index++ ;
          });
        },
        child: Container(
            color: Colors.blue.withOpacity(_index/5),
            child: Center(
              child: Text("$_index"),
            ),
        ),
      ),
    );
  }
}

class ExampleStateless extends StatelessWidget {
  const ExampleStateless({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.red,
      ),
    );
  }
}
