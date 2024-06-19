import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/new_page_2.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

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
                  Navigator.pop(context);
                },
              ),
              TextButton(
                child: Text("Go to page 2 "),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return NewPage2();
                  }));
                },
              ),
            ],
          ),
        )
    );
  }
}
