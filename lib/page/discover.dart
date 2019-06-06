import 'package:flutter/material.dart';

void main() => runApp(new DiscoverScreen());

class DiscoverScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("发现"),
      ),
      body:
      ListView(
        padding: const EdgeInsets.all(8.0),
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.access_alarms,color: Colors.orangeAccent,),
              Text('朋友圈', style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),),
            ],
          )
        ],
      )
    );
  }
}
