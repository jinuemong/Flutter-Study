
import 'package:flutter/material.dart';

class RedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: TextButton(
        child: Text("Red Button"),
        onPressed: () {},
      ),
    ));
  }
}
