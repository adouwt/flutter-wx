import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(new HomeScreen());

class HomeScreen extends StatelessWidget {
  final List<String> entries = <String>['A', 'B', 'C', 'A', 'B', 'C', 'A', 'B', 'C','A', 'B', 'C','A', 'B', 'C','A', 'B', 'C'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("微信"),
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
                    Expanded(
                      flex: 1,
                      child: FittedBox(
                        child: 
                          Image(
                            image: NetworkImage(
                            "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3315110696,2025759830&fm=27&gp=0.jpg"),
                            width: 50.0,
                          ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: FittedBox(
                        fit: BoxFit.fitWidth, // otherwise the logo will be tiny
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('秦王嬴政'),
                              Container(
                                child: FittedBox(
                                  fit: BoxFit.fitWidth, 
                                  child: Text('小赵，明天我要去灭楚庄王那孙子，你别插手....', style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black26
                                  )),
                                ),
                              ),
                              
                              new Divider( // 颜色没显示出来
                                height: 5,
                                color: Colors.black,
                              )
                            ],
                          ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: FittedBox(
                        child: 
                          Column(
                            children: <Widget>[
                              Text('凌晨 0:09', style: TextStyle(
                                fontSize: 12,
                                color: Colors.black26
                              ),),
                              Icon(Icons.accessible,color: Colors.black26,),
                            ],
                          )
                      ),
                    ),
                  ],
                ),
              );
            }
        )
    );
  }
}
