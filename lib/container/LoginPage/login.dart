import 'package:flutter/material.dart';

class LoginPageWidget extends StatefulWidget {

  @override
  State createState() {
    return new LoginPage();
  }
}

class LoginPage extends State<LoginPageWidget> {
  var usernameController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Login'),
      ),
      body: Column(
        //MainAxisSize在主轴方向占有空间的值，默认是max。还有一个min
        mainAxisSize: MainAxisSize.max,
        //MainAxisAlignment：主轴方向上的对齐方式，会对child的位置起作用，默认是start。
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: new EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0),
            child: Center(
              //本地图片
              child: new Image.asset(
                'images/banner.jpg',
                scale: 1.0,
              ),
            )
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              //控制器
              controller: usernameController,
              maxLength: 11,
              maxLines: 1,
              //是否自动更正
              autocorrect: true,
              //是否自动对焦
              //autofocus: true,
              decoration: new InputDecoration(
                //                hintText: "请输入用户名",
                labelText: "请输入用户名",
                helperText: "用户名",
                icon: new Icon(Icons.account_box),
              ),
              onChanged: (text) {
                //内容改变的回调
                print('change $text');
              },
              onSubmitted: (text) {
                //内容提交(按回车)的回调
                print('submit $text');
              },
            ),
          ),
        ],
      )
    );
  }
}
