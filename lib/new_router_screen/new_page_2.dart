import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewPage2Router extends StatelessWidget {
  const NewPage2Router({super.key});

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
                  context.pop();
                },
              ),
              TextButton(
                child: Text("Go to home"),
                onPressed: () {
                    context.goNamed("home");
                },
              )
            ],
          ),
        )
    );
  }
}
