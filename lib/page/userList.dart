import 'package:flutter/material.dart';

// void main() => runApp(new UserListScreen());

class UserListScreen extends StatelessWidget {
  final List<String> entries = <String>['A', 'B', 'C', 'A', 'B', 'C', 'A', 'B', 'C','A', 'B', 'C','A', 'B', 'C','A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100, 600, 500, 100,600, 500, 100, 600, 500, 100,600, 500, 100,600, 500, 100,];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("通讯录"),
      ),
      body: 
        ListView.builder(
            padding: const EdgeInsets.all(8.0),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 50,
                color: Colors.blueGrey[colorCodes[index]],
                child: Center(child: Text('Entry ${entries[index]}')),
              );
            }
        )
    );
  }
}