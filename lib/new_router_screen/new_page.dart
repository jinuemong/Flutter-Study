import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/new_page_2.dart';
import 'package:go_router/go_router.dart';

class NewPageRouter extends StatelessWidget {
  const NewPageRouter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("next new page"),
        ),
        body: Center(
          child: Column(
            children: [
              TextButton(
                child: Text("Go to Back"),
                onPressed: () {
                  context.pop();
                },
              ),
              TextButton(
                child: Text("Go to page 2 "),
                onPressed: () => context.pushNamed("new1")
              ),
            ],
          ),
        )
    );
  }
}
