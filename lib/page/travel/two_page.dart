import 'package:flutter/material.dart';

class TwoPage extends StatefulWidget {
  const TwoPage({Key? key}) : super(key: key);

  @override
  State<TwoPage> createState() => _TwoPAGEState();
}

class _TwoPAGEState extends State<TwoPage> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("二"),);
  }
}
