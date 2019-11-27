import 'package:flutter/material.dart';
import 'package:poem/actions/Adapt.dart';

class MyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyState();
  }
}

class MyState extends State<MyPage> with SingleTickerProviderStateMixin {
  TabController _tabController;

  static String _sign = """### **简介**
> ListView “滚动列表”
- 一个非常常用的控件，涉及到数据列表展示的，一般情况下都会选用该控件。
""";
  final _myTabs = <Tab>[Tab(text: '作品'), Tab(text: '动态'), Tab(text: '喜欢')];
  final _myTabContents = <Widget>[
    Text('作品'),
    Text(_sign + _sign + _sign),
    Text('喜欢')
  ];

  @override
  void initState() {
    _tabController = TabController(length: _myTabs.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //顶部消息按钮 设置
    Widget _item_set() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          )
        ],
      );
    }

    //头像 名称 修改签名
    Widget _item_head() {
      return Wrap(children: <Widget>[
        Column(children: <Widget>[
          ClipOval(
              child: Image.network(
                "https://upload-images.jianshu.io/upload_images/259-1780a5790a1bc98a.jpg",
                width: 80,
                height: 80,
              ))
        ]),
        Column(
          children: <Widget>[
          ],
        )
      ]);
    }


    //个人信息
    Widget _item_inf() {
      return Container(child: Row(
        children: <Widget>[
          Text("用户名称",
              style: new TextStyle(
                fontWeight: FontWeight.bold,
              ))
        ],
      ));
    }

    //个性签名
    Widget _item_sign() {
      return Container(child:
      Text("一个非常常用的控件，涉及到数据列表展示的，一般情况下都会选用该控件",
          style: new TextStyle(
            color: Colors.grey[500],
          ))
      );
    }


    //获赞 关注 粉丝
    Widget _item_stat() {
      return Container(child: Text("100获赞  0关注  120W粉丝"));
    }

    //广告
    Widget _item_ads() {
      return Container(child: Text("广告位,广告位,广告位,广告位,广告位"));
    }

    //作品  喜欢 tab
    Widget _item_favorite() {
      return Container(
          child: TabBar(
            controller: _tabController,
            tabs: _myTabs,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            labelStyle:
            TextStyle(fontSize: Adapt.px(28), fontWeight: FontWeight.bold),
            unselectedLabelStyle: TextStyle(color: Colors.grey),
          ));
    }

    //作品  喜欢 内容
    Widget _item_favorite_1() {
      return Container(
          width: 180.0,
          height: 100.0,
          child: TabBarView(
            controller: _tabController,
            children: _myTabContents,
          ));
    }

    return Container(
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          _item_set(),
          _item_head(),
          _item_inf(),
          _item_sign(),
          _item_stat(),
          _item_ads(),
          _item_favorite(),
          _item_favorite_1(),
          //other row
        ],
      ),
    );
  }
}
