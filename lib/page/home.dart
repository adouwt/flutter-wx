import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



class Post {
  final String message;
  var userlist = [];
  Post({this.message, this.userlist});
  factory Post.fromJson(Map<String, dynamic> json) {
    return new Post(
      message: json['message'],
      userlist: json['users'],
    );
  }
}

// void main() => runApp(new MyApp());

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('微信'),
        ),
        body: new Center(
          child: new FutureBuilder<Post>(
            future: fetchPost(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                // print('userlist: ${snapshot.data.userlist}');
                return new Container(
                  child: 
                  ListView.builder(
                      padding: const EdgeInsets.all(8.0),
                      itemCount: snapshot.data.userlist.length,
                      itemBuilder: (BuildContext context, int index) {
                        var item = snapshot.data.userlist[index];
                        return Container(
                          padding: EdgeInsets.all(5),
                          height: 50,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 7,
                                child: Image(
                                      image: NetworkImage(item['avatar_url']),
                                      width: 50.0,
                                    ),
                              ),
                              Expanded(
                                flex:1,
                                child:Padding(
                                  padding: EdgeInsets.only(left: 5),
                                )
                              ),
                              Expanded(
                                flex: 35,
                                child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(item['name']),
                                        Container(
                                          child: FittedBox(
                                            fit: BoxFit.fitWidth, 
                                            child: Text(item['_id'], style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black26
                                            )),
                                          ),
                                        ),
                                        new Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                        ),
                                        new Divider(
                                          height: 5,
                                          color: Colors.black26,
                                        )
                                      ],
                                    ),
                              ),
                              Expanded(
                                flex: 5,
                                child: FittedBox(
                                  child: 
                                    Column(
                                      children: <Widget>[
                                        Text('凌晨 0:09', style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black26
                                        ),),
                                        Icon(Icons.accessible,color: Colors.black26,),
                                        new Divider( // 颜色没显示出来
                                          height: 5,
                                          color: Colors.black26,
                                        )
                                      ],
                                    )
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                  ),
                );
                // return new Text(snapshot.data.message);
              } else if (snapshot.hasError) {
                return new Text("${snapshot.error}");
              }

              // By default, show a loading spinner
              return new CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }

  Future<Post> fetchPost() async {
    final response = await http.get('http://18.10.1.115:4000/get/alluser');
    final responseJson = json.decode(response.body);
    // print(responseJson['users']);
    return new Post.fromJson(responseJson);
  }


}