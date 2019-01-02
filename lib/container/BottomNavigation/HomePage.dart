
import 'package:flutter/material.dart';

// 页面跳转
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
//      appBar: AppBar(
//        title: new Text('HomePage'),
//        leading: new IconButton(
//          icon: new Icon(Icons.arrow_back),
//          tooltip: 'Back',
//          onPressed: () {
//            Navigator.pop(context);
//          },
//        ),
//      ),
      body: Center(
        child: new Container(
          margin: new EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('HomePage'),
              Text('侧滑手势监听'),
            ],
          )
        ),
      )
    );
  }
}