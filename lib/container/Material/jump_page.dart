import 'package:flutter/material.dart';

// 页面跳转
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: new Text('page one'),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
          tooltip: 'Back',
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: new Container(
        margin: new EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 30.0),
        color: Colors.red,
        child: RaisedButton(
          child: Text('Go to Second Page'),
          onPressed: () {
            print('Go to Second Page');
            Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print('${this} hashCode=${this.hashCode}');
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: new Text('Go Back'),
          onPressed: () {
            print('This is 2nd page');
            Navigator.pop(context);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Text('按钮')
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            //userHeader, // 可在这里替换自定义的header
            ListTile(
              title: Text('Item 1'),
              leading: new CircleAvatar(child: new Icon(Icons.school),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(title: Text('Item 2'),
              leading: new CircleAvatar(child: new Text('B2'),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(title: Text('Item 3'),
              leading: new CircleAvatar(
                child: new Icon(Icons.list),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}