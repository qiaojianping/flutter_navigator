import 'package:flutter/material.dart';
import 'package:flutter_demo/navigator/tap_navigator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter之导航栏',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TapNavigator(),
    );
  }
}
