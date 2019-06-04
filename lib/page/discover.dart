import 'package:flutter/material.dart';

void main() => runApp(new DiscoverScreen());

class DiscoverScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("发现"),
      ),
      body: Center(
        child: Text("This is 发现 route"),
      ),
    );
  }
}