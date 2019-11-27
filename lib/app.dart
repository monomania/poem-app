import 'dart:io';

import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter/services.dart';
import 'package:poem/views/main/page.dart';

Widget createApp() {
  //日志
  LogUtil.init(isDebug: true);

  if (Platform.isAndroid) {
    //设置Android头部的导航栏透明
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }

  return MaterialApp(
    title: 'poem',
    debugShowCheckedModeBanner: true,
    theme: ThemeData(
      primarySwatch: Colors.amber,
    ),
    home: MainPage(),
  );
}
