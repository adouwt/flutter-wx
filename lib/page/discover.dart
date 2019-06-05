import 'package:flutter/material.dart';

void main() => runApp(new DiscoverScreen());

class DiscoverScreen extends StatelessWidget {
  final List<String> entries = <String>['A', 'B', 'C', 'A', 'B', 'C', 'A', 'B', 'C','A', 'B', 'C','A', 'B', 'C','A', 'B', 'C'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("发现"),
      ),
      body:
      ListView.builder(
            padding: const EdgeInsets.all(8.0),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.all(5),
                height: 50,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.accessible,color: Colors.green,),
                    Column(
                      children: <Widget>[
                        Text('秦始皇',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        Text('小赵,明天我把楚国灭了，你别插手',style: TextStyle(
                            fontSize: 14,
                            color: Colors.black12
                        ),)
                      ],
                    )
                  ],
                ),
              );
            }
        )
    );
  }
}
