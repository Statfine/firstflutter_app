
import 'package:flutter/material.dart';

// 页面跳转
class MinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: new Text('MinePage'),
//        leading: new IconButton(
//          icon: new Icon(Icons.arrow_back),
//          tooltip: 'Back',
//          onPressed: () {
//            Navigator.pop(context);
//          },
//        ),
      ),
      body: new Container(
        margin: new EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 30.0),
        child: Text('MinePage'),
      ),
    );
  }
}