
import 'package:flutter/material.dart';

import 'RedButton.dart';

class Myapp extends StatelessWidget {
  // 이 클래스의 슈퍼클래스인 StatelessWidget도 build
  // 메서드를 갖지만 이 메서드를 대신 호출해야 한다는 의미로 사용된다.
  @override
  Widget build(BuildContext context) {
    // 앱의 모든 위젯에서 머티리얼 디자인 기능을 이용할 수 있도록 앱을 감싼다.
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RedButton(),
    );
  }
}
