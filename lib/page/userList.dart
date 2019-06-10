import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
// import '../utils/HttpRequest.dart';

// _handleGetShelf () async {
//   var result = await HttpRequest.request(
//     '/get/alluser', 
//     method: HttpRequest.GET,
//     data: {}
//   );
//   print(result);
// }

void getHttp() async {
  try {
    Response response = await Dio().get("http://18.10.1.115:4000/get/alluser");
    print(response);
  } catch (e) {
    print(e);
  }
}

class UserListScreen extends StatelessWidget {
  final List<String> entries = <String>['A', 'B', 'C', 'A', 'B', 'C', 'A', 'B', 'C','A', 'B', 'C','A', 'B', 'C','A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100, 600, 500, 100,600, 500, 100, 600, 500, 100,600, 500, 100,600, 500, 100,];
  @override
  Widget build(BuildContext context) {
    getHttp();
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