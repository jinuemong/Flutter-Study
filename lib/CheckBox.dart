import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('체크 박스 활용'),
      ),
      body: Check(),
    ),
  ));
}

class Check extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TestCheckBox(),
      ],
    );
  }
}

class TestCheckBox extends StatefulWidget {
  const TestCheckBox({super.key});

  @override
  State<StatefulWidget> createState() => _TestCheckBoxState();
}

class _TestCheckBoxState extends State<TestCheckBox> {
  late List<bool> values;

  @override
  void initState() {
    super.initState();
    values = [false, false, false];
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: values[0],
            onChanged: (value) => changeValue(0, value ?? false)),
        Checkbox(
            value: values[1],
            onChanged: (value) => changeValue(1, value ?? false)),
        Checkbox(
            value: values[2],
            onChanged: (value) => changeValue(2, value ?? false)),
      ],
    );
  }

  void changeValue(int index, bool value) {
    setState(() {
      values[index] = value;
    });
  }
}
