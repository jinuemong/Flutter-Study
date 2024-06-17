import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('콜백 스터디'),
      ),
      body: TestWidget(),
    ),
  ));
}

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<StatefulWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        'Count : $value',
        style: const TextStyle(fontSize: 30),
      ),
      TestButton(addCounter), // 콜백 함수 전달
    ]);
  }

  // 콜백함수 선언
  void addCounter(int addValue) => setState(() => value = addValue + value);
}

class TestButton extends StatelessWidget {
  const TestButton(this.callback,{super.key});

  // final VoidCallback callback;
  final Function(int) callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      width: double.infinity,
      child: GestureDetector( // 입력을 받는 감지기
        onTap: () => callback.call(1),
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            decoration: BoxDecoration(border: Border.all()),
            child: const Text(
              "Up Counter",
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
