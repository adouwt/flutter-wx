import 'package:flutter/material.dart';

void main() => runApp(new HomeScreen());

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("微信"),
      ),
      body: new Column(
        children: <Widget>[
          Text('home'),
          FlatButton(
            child: Text("open friend_circle"),
            textColor: Colors.blue,
            onPressed: () {
              Navigator.pushNamed(context, "friend_circle");
              },
            ),
        ],
      ),
    );
  }
}