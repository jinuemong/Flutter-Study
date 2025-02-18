
import 'dart:math';
import 'package:flutter/material.dart';

// 자신의 배경색을 관리하며, 버튼을 누르면 전달된 콜백을 호출한다.
class FancyButton extends StatefulWidget {
  final VoidCallback onPressed;
  final Widget child;

  const FancyButton({
    Key? key,
    required this.onPressed,
    required this.child
  }) : super(key:key);

  @override
  _FancyButtonState createState() => _FancyButtonState();
}

class _FancyButtonState extends State<FancyButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: _getColors()
        ),
        onPressed: widget.onPressed,
        child: widget.child,
      ),
    );
  }

  Color _getColors(){
    return _buttonColors.putIfAbsent(this, ()=> colors[next(0,5)]);
  }

  final Map<_FancyButtonState,Color> _buttonColors = {};
  final _random = Random();
  int next(int min, int max) => min+_random.nextInt(max-min);
  List<Color> colors = [
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.amber,
    Colors.lightBlue,
  ];
}

