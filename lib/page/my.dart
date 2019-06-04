import 'package:flutter/material.dart';

void main() => runApp(new MyScreen());

class MyScreen extends StatelessWidget {
  void _takePhoto() {
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("微信", 
          style: TextStyle(
          color: Colors.black,
          fontSize: 18.0,
          fontFamily: "Courier",
        ),),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.photo_camera),
            tooltip: 'search',
            color: Colors.black,
            onPressed: _takePhoto,
          ),
        ],
        backgroundColor: Colors.grey[300],
      ),
      body: Center(
        child: Text("This is My route"),
      ),
    );
  }
}