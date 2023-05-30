import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("首页"));
  }
}
