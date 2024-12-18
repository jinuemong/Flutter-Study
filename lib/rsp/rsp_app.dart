import 'package:flutter/material.dart';

import 'game_body.dart';

void main() {
  runApp(const RSPapp());
}

class RSPapp extends StatelessWidget {
  const RSPapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("가위 바위 보 "),
        ),
        body: const GameBody(),
      ),
    );
  }
}
