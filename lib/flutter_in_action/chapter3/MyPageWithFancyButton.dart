import 'package:flutter/material.dart';
import 'package:flutter_application_1/flutter_in_action/chapter3/FancyButton.dart';

class MyPageWithFancyButton extends StatefulWidget {
  @override
  createState() => _MyPageWithFancyButtonState();
}

class _MyPageWithFancyButtonState extends State<MyPageWithFancyButton> {
  int _count = 10;
  bool _reversed = false;
  List<Key> _buttonKeys = [Key("first"), Key("second")];

  @override
  Widget build(BuildContext context) {
    final incrementButton = FancyButton(
        key: _buttonKeys.first,
        onPressed: _incrementCounter,
        child: Text("Increment"));
    final decrementButton = FancyButton(
        key: _buttonKeys.last,
        onPressed: _decrementCounter,
        child: Text("Decrement"));
    List<Widget> _buttons = <Widget>[incrementButton, decrementButton];
    if (_reversed) {
      _buttons = _buttons.reversed.toList();
    }
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _buttons,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _resetCounter,
      ),
    );
  }

  void _decrementCounter() {
    setState(() => _count--);
  }

  void _incrementCounter() {
    setState(() => _count++);
  }

  void _resetCounter() {
    setState(() => _count = 10);
    _swap();
  }

  void _swap() {
    setState(() => _reversed = !_reversed);
  }
}
