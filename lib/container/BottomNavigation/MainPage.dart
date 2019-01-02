import 'package:flutter/material.dart';
import 'package:firstflutter_app/container/BottomNavigation/HomePage.dart';
import 'package:firstflutter_app/container/BottomNavigation/FindPage.dart';
import 'package:firstflutter_app/container/BottomNavigation/MinePage.dart';
import 'package:firstflutter_app/container/BasicPage.dart';

// 底部tab切换页面
class MainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MainPageWidget(),
    );
  }
}

class MainPageWidget extends StatefulWidget {

  @override
  State createState() {
    return new MainPageState();
  }
}

class MainPageState extends State<MainPageWidget> {
  int _tabIndex = 0;
  var tabImages;
  var appBarTitles = ['首页', '发现', '我的'];

  /*
   * 存放三个页面，跟fragmentList一样
   */
  var _pageList;

  /*
   * 根据选择获得对应的normal或是press的icon
   */
  Image getTabIcon(int curIndex) {
    if (curIndex == _tabIndex) {
      return tabImages[curIndex][1];
    }
    return tabImages[curIndex][0];
  }
  /*
   * 获取bottomTab的颜色和文字
   */
  Text getTabTitle(int curIndex) {
    if (curIndex == _tabIndex) {
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(fontSize: 14.0, color: const Color(0xff1afa29)));
    } else {
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(fontSize: 14.0, color: const Color(0xff515151)));
    }
  }

  /*
   * 根据image路径获取图片
   */
  Image getTabImage(path) {
    return new Image.asset(path, width: 24.0, height: 24.0);
  }

  void initData() {
    /*
     * 初始化选中和未选中的icon
     */
    tabImages = [
      [getTabImage('images/home.png'), getTabImage('images/home_selected.png')],
      [getTabImage('images/find.png'), getTabImage('images/find_selected.png')],
      [getTabImage('images/mine.png'), getTabImage('images/mine_selected.png')]
    ];
    /*
     * 三个子界面
     */
    _pageList = [
      new HomePage(),
      new FindPage(),
      new MinePage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    //初始化数据
    initData();
    return Scaffold(
      appBar: AppBar(
        title: Text('Main'),
      ),
      body: _pageList[_tabIndex],
      bottomNavigationBar: new BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
            icon: getTabIcon(0),
            title: getTabTitle(0),
          ),
          new BottomNavigationBarItem(
            icon: getTabIcon(1),
            title: getTabTitle(1),
          ),
          new BottomNavigationBarItem(
            icon: getTabIcon(2),
            title: getTabTitle(2),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        //默认选中首页
        currentIndex: _tabIndex,
        iconSize: 24.0,
        //点击事件
        onTap: (index) {
          setState(() {
            _tabIndex = index;
          });
        },
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            //userHeader, // 可在这里替换自定义的header
            ListTile(
              title: Text('BasicPage 1'),
              leading: new CircleAvatar(child: new Icon(Icons.school),),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => (BasicPage())));
              },
            ),
            ListTile(title: Text('BasicPage 2'),
              leading: new CircleAvatar(child: new Text('B2'),),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => (BasicPage())));
              },
            ),
            ListTile(title: Text('BasicPage 3'),
              leading: new CircleAvatar(
                child: new Icon(Icons.list),),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => (BasicPage())));
              },
            ),
          ],
        ),
      ),
    );
  }
}
