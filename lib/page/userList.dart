import 'package:flutter/material.dart';

void main() => runApp(new UserListScreen());

class UserListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("userlist"),
      ),
      body: Center(
        child: Text("This is userlist route"),
      ),
    );
  }
}