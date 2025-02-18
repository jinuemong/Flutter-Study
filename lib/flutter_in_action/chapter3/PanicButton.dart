
import 'package:flutter/material.dart';

class Panicbutton extends StatelessWidget {
  final Widget display;
  final VoidCallback onPressed;

  Panicbutton({
    required this.display,
    required this.onPressed,
  });

  Widget build(BuildContext context){
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.red,
      ),
      child: display,
      onPressed: onPressed,
    );
  }
}
