import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 기초 학습 컨테이너 + 위젯
void main() {
  runApp( MaterialApp(
    // 위젯 트리에서 최상위 앱
    home: Scaffold(
      // 화면을 구성할 때 가장 기본이 되는 도화지
      body: TestWidget(),
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            print("Tab");
          }, icon: Icon(Icons.home)),
          Icon(Icons.play_arrow)
        ],
        title: Text("this is App bar "),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.bug_report),
        onPressed: () {
          print("Tab Bug");
        },
      ),
    ),
  ));
}


class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: Text(
          "Hello",
          style: TextStyle(
            fontSize: 40,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
