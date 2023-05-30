import 'package:flutter/material.dart';
import 'package:flutter_demo/page/home_page.dart';
import 'package:flutter_demo/page/my_page.dart';
import 'package:flutter_demo/page/search_page.dart';
import 'package:flutter_demo/page/travel_page.dart';

class TapNavigator extends StatefulWidget {
  const TapNavigator({Key? key}) : super(key: key);

  @override
  State<TapNavigator> createState() => _TapNavigatorState();
}

class _TapNavigatorState extends State<TapNavigator> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: const [HomePage(), SearchPage(), TravelPage(), MyPage()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black),
              activeIcon: Icon(Icons.home, color: Colors.blue),
              label: "首页"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.black),
              activeIcon: Icon(Icons.search, color: Colors.blue),
              label: "搜索"),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt, color: Colors.black),
              activeIcon: Icon(Icons.camera_alt, color: Colors.blue),
              label: "旅拍"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle, color: Colors.black),
              activeIcon: Icon(Icons.account_circle, color: Colors.blue),
              label: "我的"),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          _pageController.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
