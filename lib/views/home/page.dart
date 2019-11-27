import 'package:flutter/material.dart';
import 'package:poem/actions/Adapt.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }
}

class HomeState extends State<HomePage> {
  //table 三个选择
  final List<Tab> _myTabs = <Tab>[
    Tab(text: '诗文'),
    Tab(text: '名句'),
    Tab(
      icon: Icon(Icons.search),
    )
  ];

  //诗文
  Container _poem() {
    return Container(
      constraints: BoxConstraints.expand(
        height: 200.0,
      ),
      padding: const EdgeInsets.all(8.0),
      color: Colors.white,
      alignment: Alignment.center,
      child: ListView(
        padding: const EdgeInsets.only(top: 160.0),
        children: <Widget>[
          Center(child: Text("一东")),
          Center(child: Text("云对雨，雪对风，晚照对晴空。")),
          Center(child: Text("来鸿对去燕，宿鸟对鸣虫。")),
          Center(child: Text("三尺剑，六钧弓，岭北对江东。")),
          Center(child: Text("人间清暑殿，天上广寒宫。")),
          Center(child: Text("两岸晓烟杨柳绿，一园春雨杏花红。")),
          Center(child: Text("两鬓风霜，途次早行之客；")),
          Center(child: Text("一蓑烟雨，溪边晚钓之翁。")),
        ],
      ),
    );
  }

  //名句
  Container _phrase() {
    return Container(
      constraints: BoxConstraints.expand(
        height: 200.0,
      ),
      padding: const EdgeInsets.all(8.0),
      color: Colors.blue[600],
      alignment: Alignment.center,
      child: Text('名句'),
    );
  }

  //搜索
  Container _search() {
    return Container(child: Text("搜索"));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _myTabs.length,
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            brightness: Brightness.light,
            title: Container(
                child: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.black,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              labelStyle: TextStyle(
                  fontSize: Adapt.px(28), fontWeight: FontWeight.bold),
              unselectedLabelStyle: TextStyle(color: Colors.grey),
              tabs: _myTabs,
            )),
            backgroundColor: Colors.white,
            elevation: 0.0,
          ),
          drawer: Container(),
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[_poem(), _phrase(), _search()],
          )),
    );
  }
}
