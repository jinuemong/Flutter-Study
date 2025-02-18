import 'package:flutter/material.dart';

class MultiChildWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MultiChildWidget();
}

class _MultiChildWidget extends State<MultiChildWidget> {
  int _counter = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        //정렬 옵션 활용
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          TextButton(
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: Text("decrement"),
            onPressed: _decrementCounter,
          ),
          TextButton(
            style: TextButton.styleFrom(foregroundColor: Colors.blue),
            child: Text("increment"),
            onPressed: _incrementCounter,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _resetCounter,
        tooltip: "Reset Counter",
        child: Icon(Icons.refresh),
      ),
    );
  }

  void _decrementCounter() {
    setState(() => _counter--);
  }

  void _incrementCounter() {
    setState(() => _counter++);
  }

  void _resetCounter() {
    setState(()=>_counter = 10);
  }
}
