import 'package:flutter/material.dart';
import 'package:firstflutter_app/container/Material/jump_page.dart';
import 'package:firstflutter_app/container/networking/fetch_data.dart';

class BasicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('${this} hashCode=${this.hashCode}');
    return Scaffold(appBar: AppBar(title: Text('BasicPage'),),
      body: Center(
        child: Column(
          children: <Widget>[
            new Row( // 水平充满  水平布局(Row)+充满(Expanded)+子元素(child-OutlineButton)
              children: <Widget>[
                new Expanded(
                  child: new OutlineButton(
                    borderSide:new BorderSide(color: Theme.of(context).primaryColor),
                    child: Text("Go back"),
                    onPressed: () {
                      print('This is BasicPage');
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
//            new Column(
//              children: <Widget>[
//                new Padding(
//                  padding: new EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
//                  child: new Text("Padding测试Buton的宽度"),
//                ),
//                RaisedButton(
//                    child: Text("界面跳转demo"),
//                    onPressed: () {
//                      print('界面跳转demo');
//                      Navigator.push(context, MaterialPageRoute(builder: (context) => FirstPage()));
//                    }
//                ),
//                RaisedButton(
//                    child: Text("网络请求"),
//                    onPressed: () {
//                      print('网络请求');
//                      Navigator.push(context, MaterialPageRoute(builder: (context) => FetchingDataPage1()));
//                    }
//                ),
//              ],
//            ),
            RaisedButton(
              child: Text("界面demo"),
              onPressed: () {
                print('界面跳转demo');
                Navigator.push(context, MaterialPageRoute(builder: (context) => FirstPage()));
              },
              color: Colors.amberAccent,
            ),
            RaisedButton(
              child: Text("网络请求"),
              onPressed: () {
                print('网络请求');
                Navigator.push(context, MaterialPageRoute(builder: (context) => FetchingDataPage1()));
              }
            ),
            RaisedButton(
              child: Text("事件状态"),
              onPressed: () {
                print('事件状态');
              }
            ),
          ]
        )
      ),
    );
  }
}