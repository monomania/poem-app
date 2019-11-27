import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:poem/actions/Adapt.dart';
import 'package:poem/views/favorite/page.dart';
import 'package:poem/views/home/page.dart';
import 'package:poem/views/message/page.dart';
import 'package:poem/views/my/page.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MainState();
  }
}

class MainState extends State<MainPage> {
  final pageController = PageController();
  int _currentIndex = 0;
  final pages = [HomePage(), FavoritePage(), MessagePage(), MyPage()];
  final bottomNavigationBarItems = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home, size: Adapt.px(44)),
      title: Text("首页"),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite, size: Adapt.px(44)),
      title: Text("关注"),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.message, size: Adapt.px(44)),
      title: Text("消息"),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.account_circle,
        size: Adapt.px(44),
      ),
      title: Text("我的"),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        children: pages,
        controller: pageController,
        onPageChanged: (int i) =>
            {LogUtil.v("切换到页面:" + i.toString(), tag: "MainPage")},
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: bottomNavigationBarItems,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.grey,
        onTap: (int index) {
          if (index != _currentIndex) {
            setState(() {
              _currentIndex = index;
            });
            pageController.jumpToPage(index);
          }
        },
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
