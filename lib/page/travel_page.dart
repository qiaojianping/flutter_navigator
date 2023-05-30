import 'package:flutter/material.dart';
import 'package:flutter_demo/page/travel/four_page.dart';
import 'package:flutter_demo/page/travel/three_page.dart';
import 'package:flutter_demo/page/travel/two_page.dart';
import 'package:flutter_demo/page/travel/one_page.dart';

class TravelPage extends StatefulWidget {
  const TravelPage({Key? key}) : super(key: key);

  @override
  State<TravelPage> createState() => _TravelPageState();
}

class _TravelPageState extends State<TravelPage> with TickerProviderStateMixin {
  late TabController _controller;

  List<String> titles = ["推荐1", "推荐2", "推荐3", "推荐4"];

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: titles.length, vsync: this);
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            child: TabBar(
              tabs: titles
                  .map((title) => Tab(
                        text: title,
                      ))
                  .toList(),
              controller: _controller,
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _controller,
              children: const [
                OnePage(),
                TwoPage(),
                ThreePage(),
                FourPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
