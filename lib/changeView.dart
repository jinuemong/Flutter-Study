import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/new_page.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('화면 전환 스터디'),
      ),
      body: HomeWidget(),
    ),
  ));
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({
    super.key,
  });

  @override
  State<StatefulWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("화면 전환")),
        body: Center(
          child: TextButton(
            child: Text("Go to Page"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NewPage();
              }));
            },
          ),
        ));
  }
}
