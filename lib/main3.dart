import 'package:flutter/material.dart';

// 위젯 배치

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('위젯 배치하기'),
      ),
      body: const RowBody(),
    ),
  ));
}

class ColumnBody extends StatelessWidget {
  const ColumnBody({super.key});

  @override
  Widget build(BuildContext context) {
    // return Placeholder( // 위젯이 있음을 명시하고 자리를 차지함
    //     child: Text("Place holder"),
    // );
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.grey,
      child: Column(
        mainAxisSize: MainAxisSize.max, // 최대 사이즈 상속
        mainAxisAlignment: MainAxisAlignment.center , // Column에서의 중앙 정렬
        crossAxisAlignment: CrossAxisAlignment.center, // 좌우 정렬
        children: [
          Container(
            child: Text("container 1"),
          ),
          Container(
            child: Text("container 2"),
          ),
          Container(
            child: Text("container 3"),
          ),
        ],
      ),
    );
  }
}

class RowBody extends StatelessWidget {
  const RowBody({super.key});

  @override
  Widget build(BuildContext context) {
    // return Placeholder( // 위젯이 있음을 명시하고 자리를 차지함
    //     child: Text("Place holder"),
    // );
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.grey,
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max, // 최대 사이즈 상속
            mainAxisAlignment: MainAxisAlignment.center , // Column에서의 중앙 정렬
            crossAxisAlignment: CrossAxisAlignment.center, // 좌우 정렬
            children: [
              Container(
                child: Text("container 1"),
              ),
              Container(
                child: Text("container 2"),
              ),
              Container(
                child: Text("container 3"),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max, // 최대 사이즈 상속
            mainAxisAlignment: MainAxisAlignment.center , // Column에서의 중앙 정렬
            crossAxisAlignment: CrossAxisAlignment.center, // 좌우 정렬
            children: [
              Container(
                child: Text("container 4"),
              ),
              Container(
                child: Text("container 5"),
              ),
              Container(
                child: Text("container 6"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
