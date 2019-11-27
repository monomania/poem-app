import 'package:flutter/material.dart';
import 'package:poem/actions/Adapt.dart';

class MessagePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MessageState();
  }
}

class MessageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Text("message");
  }
}
