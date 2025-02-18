
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  // 슈퍼클래스의 메서드 createState를 오버라이드
  // 모든 StatefulWidget은 State 객체를 반환하는 create 메서드 반드시 정의
  @override
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              // 콜백을 활용해, 부모 위젯에서 상태를 관리한다.
              onPressed: _decrementCounter,
              child: const Text("Decrement Counter"),
            )
          ],
        ),
      ),
    );
  }

  void _decrementCounter() {
    // setState는 콜백을 인수로 받으며, 이 콜백은 위젯의 상태를 갱신한다.
    setState(() => _counter--);
  }
}


