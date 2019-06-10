import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Post> fetchPost() async {
  final response =
      await http.get('http://18.10.1.115:4000/get/alluser');
  final responseJson = json.decode(response.body);

  return new Post.fromJson(responseJson);
}

class Post {
  final String message;
  // final List users;
  Post({this.message});
  factory Post.fromJson(Map<String, dynamic> json) {
    return new Post(
      message: json['message'],
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
                return new Text(snapshot.data.message);
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
}