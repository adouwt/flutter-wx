import 'package:flutter/material.dart';

void main() => runApp(new HomeScreen());

class HomeScreen extends StatelessWidget {
  final List<String> entries = <String>['A', 'B', 'C', 'A', 'B', 'C', 'A', 'B', 'C','A', 'B', 'C','A', 'B', 'C','A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100, 600, 500, 100,600, 500, 100, 600, 500, 100,600, 500, 100,600, 500, 100,];
  void _toFriends() {
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
            icon: Icon(Icons.search),
            tooltip: 'search',
            color: Colors.black,
            onPressed: _toFriends,
          ),
          IconButton(
            icon: Icon(Icons.add_circle_outline),
            tooltip: 'add',
            color: Colors.black,
            onPressed: _toFriends,
          ),
        ],
        backgroundColor: Colors.grey[300],
      ),
      body: 
        ListView.builder(
            padding: const EdgeInsets.all(8.0),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 50,
                color: Colors.amber[colorCodes[index]],
                child: Center(child: Text('Entry ${entries[index]}')),
              );
            }
        )
    );
  }
}