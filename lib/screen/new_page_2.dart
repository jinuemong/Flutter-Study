import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewPage2 extends StatelessWidget {
  const NewPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("next new page 2"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                child: Text("Go to back"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              TextButton(
                child: Text("Go to home"),
                onPressed: () {
                  Navigator.popUntil(context, (route) =>route.isFirst);
                },
              )
            ],
          ),
        )
    );
  }
}
