import 'package:flutter/material.dart';
import 'page/home.dart';
import 'page/friendCircle.dart';
import 'page/userList.dart';
import 'page/discover.dart';
import 'page/my.dart';
import 'page/camera.dart';


// 这里导入组件或者模块的功能很厉害，只要导入进来，在当前文件环境就能知道该导入的文件的 Class 名字，并且直接使用

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter WX',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      //注册路由表
      routes:{
        "home":(context) => HomeScreen(),
        "user_list":(context) => UserListScreen(),
        "discover":(context) => DiscoverScreen(),
        "my":(context) => MyScreen(),
        "friend_circle": (context) => FriendCircleScreen(),
        "camera": (context) => MyCamera(),
      } ,
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
 List<Widget> pages = List<Widget>();

  @override
  void initState() {
    pages
      ..add(HomeScreen())
      ..add(UserListScreen())
      ..add(DiscoverScreen())
      ..add(MyScreen());
      super.initState();
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Text('微信'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text('通讯录'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.remove_red_eye),
            title: Text('发现'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_ind),
            title: Text('我的'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black26
      ),
    );
  }
}
