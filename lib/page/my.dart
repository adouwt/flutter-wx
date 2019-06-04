import 'package:flutter/material.dart';

void main() => runApp(new MyScreen());

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My"),
      ),
      body: Center(
        child: Text("This is My route"),
      ),
    );
  }
}