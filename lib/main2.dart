import 'package:flutter/material.dart';

// Container + StatelessWidget 학습

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Study to Container'),
      ),
      body: const CustomContainer(),
    ),
  ));
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        padding: EdgeInsets.fromLTRB(10, 12, 10, 12),
        // 내부
        margin: EdgeInsets.symmetric(vertical: 24, horizontal: 30),
        // 외부
        decoration: BoxDecoration(
            //반드시 바깥 색상이 null이어야 한다 -> 충돌 발생
            color: Colors.red.shade200,
            border: Border.all(
                color: Colors.red, width: 5, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(150), // Radius
            boxShadow: [
              // 여러가지 쉐도우를 한 번에 줄 수 있음
              BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  offset: const Offset(6, 6),
                  blurRadius: 10,
                  spreadRadius: 10
              ),
              BoxShadow(
                  color: Colors.blue.withOpacity(0.3),
                  offset: const Offset(-6, -6),
                  blurRadius: 10,
                  spreadRadius: 10
              )
            ]),
        child: Center(
            child: Container(
                color: Colors.yellow, child: Text("Hello Container"))),
      ),
    );
  }
}
