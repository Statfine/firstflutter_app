import 'package:flutter/material.dart';

// 页面跳转
class FindPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: new Text('FindPage'),
//        leading: new IconButton(
////          icon: new Icon(Icons.arrow_back),
////          tooltip: 'Back',
////          onPressed: () {
////            Navigator.pop(context);
////          },
////        ),
      ),
      body: Center(
        child: new Container(
          margin: new EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 30.0),
          child: Text('Findage'),
        ),
      )
    );
  }
}