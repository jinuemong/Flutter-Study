
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstNameText extends StatefulWidget {
  final String name;

  const FirstNameText({Key? key, required this.name}) : super(key: key);

  @override
  State<FirstNameText> createState() => _FirstNameTextState();
}

class _FirstNameTextState extends State<FirstNameText> {
  late String name;

  @override
  void initState() {
    super.initState();
    name = widget.name.toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 100.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.25),
        borderRadius: BorderRadius.circular(4.0)
      ),
      child: Text("text"),
    );
  }
}
