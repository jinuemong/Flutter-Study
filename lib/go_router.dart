import 'package:flutter/material.dart';
import 'package:flutter_application_1/new_router_screen/new_page.dart';
import 'package:flutter_application_1/new_router_screen/new_page_2.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MaterialApp.router(
    routerConfig: GoRouter(initialLocation: "/", routes: [
      GoRoute(
          path: "/", name: "home", builder: (context, _) => const HomeWidget()),
      GoRoute(
          path: "/new",
          name: "new",
          builder: (context, _) => const NewPageRouter(),
          routes: [
            // 여기서 하위 router 추가 가능
          ]),
      GoRoute(
          path: "/new1",
          name: "new1",
          builder: (context, _) => const NewPage2Router())
    ]),
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
              context.pushNamed('new');
            },
          ),
        ));
  }
}
