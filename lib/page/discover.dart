import 'package:flutter/material.dart';

void main() => runApp(new DiscoverScreen());

class DiscoverScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("发现", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
      ),
      body:
        DecoratedBox(
          decoration: BoxDecoration(
            color:Colors.black12,
          ),
          child: ListView(
              children: <Widget>[
                DecoratedBox(
                  decoration: BoxDecoration(
                    color:Colors.white,
                  ),
                  child:  Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Icon(Icons.access_alarms,color: Colors.orangeAccent),
                        ),
                        Expanded(
                          flex: 5,
                          child: Text('朋友圈', style: TextStyle(
                            fontSize: 16,
                            // fontWeight: FontWeight.bold
                          )),
                        ),
                        Expanded(
                          flex: 1,
                          child: Icon(Icons.chevron_right ,color: Colors.black26),
                        ),
                      ],
                    ),
                  )
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                    color:Colors.white,
                  ),
                  child:  Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Icon(Icons.access_alarms,color: Colors.orangeAccent),
                        ),
                        Expanded(
                          flex: 5,
                          child: Text('扫一扫', style: TextStyle(
                            fontSize: 16,
                            // fontWeight: FontWeight.bold
                          )),
                        ),
                        Expanded(
                          flex: 1,
                          child: Icon(Icons.chevron_right ,color: Colors.black26),
                        ),
                      ],
                    ),
                  )
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                    color:Colors.white,
                  ),
                  child:  Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Icon(Icons.access_alarms,color: Colors.orangeAccent),
                        ),
                        Expanded(
                          flex: 5,
                          child: Text('摇一摇', style: TextStyle(
                            fontSize: 16,
                            // fontWeight: FontWeight.bold
                          )),
                        ),
                        Expanded(
                          flex: 1,
                          child: Icon(Icons.chevron_right ,color: Colors.black26),
                        ),
                      ],
                    ),
                  )
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                    color:Colors.white,
                  ),
                  child:  Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Icon(Icons.access_alarms,color: Colors.orangeAccent),
                        ),
                        Expanded(
                          flex: 5,
                          child: Text('看一看', style: TextStyle(
                            fontSize: 16,
                            // fontWeight: FontWeight.bold
                          )),
                        ),
                        Expanded(
                          flex: 1,
                          child: Icon(Icons.chevron_right ,color: Colors.black26),
                        ),
                      ],
                    ),
                  )
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                    color:Colors.white,
                  ),
                  child:  Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Icon(Icons.access_alarms,color: Colors.orangeAccent),
                        ),
                        Expanded(
                          flex: 5,
                          child: Text('搜一搜', style: TextStyle(
                            fontSize: 16,
                            // fontWeight: FontWeight.bold
                          )),
                        ),
                        Expanded(
                          flex: 1,
                          child: Icon(Icons.chevron_right ,color: Colors.black26),
                        ),
                      ],
                    ),
                  )
                ),
            ],
          ),
        ),
        
    );
  }
}
