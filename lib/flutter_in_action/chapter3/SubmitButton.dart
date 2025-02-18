
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Submitbutton extends StatelessWidget {
  // 위젯으로 전달한 모든 데이터를 설정으로 활용한다.
  late final String buttonText;
  Submitbutton(this.buttonText);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {  },
      child: Text(buttonText)
    );
  }
}
