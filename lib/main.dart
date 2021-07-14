import 'package:flutter/material.dart';

import 'counter/counter_scaffold.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter BloC Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => CounterScaffold(),
      },
      initialRoute: '/',
    );
  }
}
