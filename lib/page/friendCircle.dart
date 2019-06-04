import 'package:flutter/material.dart';

void main() => runApp(new FriendCircleScreen());

class FriendCircleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget bannerImg = new Stack(
      alignment: const Alignment(1.2, 1.2),
      children: [
        new Image.asset(
          'images/banner-phone.png',
          width: 600.0,
          height: 240.0,
          fit: BoxFit.cover,
        ),
        new Container(
          child: new Stack(
            alignment: const Alignment(-5, -10.2),
            children: <Widget>[
              new Row(
                mainAxisAlignment: MainAxisAlignment.end,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  new Text(
                      '迩伶贰',
                      style: new TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                  ),
                  Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/avatar.jpg"),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                  ),
                ],
                
              ),
            ],
          ),
        ),
        Positioned(
              top:10,
              right: 0,
              child: GestureDetector(
                onTap: () {
                  print('111');
                },
                child: Row (
                  children: [
                    new Icon(
                      Icons.add_a_photo,
                      color: Colors.white
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                    )
                  ]
                ),
              ),
        ),
      ],
    );

    Widget userThings = new Container(
      margin: const EdgeInsets.only(top: 30.0, left: 15.0),
      child:  new Container(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Expanded(
              flex: 1,
              child:
                new Image.asset(
                  'images/avatar.jpg',
                  width: 60.0,
                  height: 60.0,
                ),
            ),
            new Container(
              margin: const EdgeInsets.all(5),
            ),
            new Expanded(
              flex: 5,
              child: 
                new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    new Text(
                    '迩伶贰',
                      style: new TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    new Text(
                    '明天就要过六一了哇，好开心啊，发几张通信阿德杀马特风格的照片在朋友圈过过节啊，反正就是开心，不接受反驳！！！！',
                      style: new TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    new Center(
                      // padding: EdgeInsets.all(5),
                      child: new Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          new Expanded(
                            child: new Container(
                              decoration: new BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(const Radius.circular(8.0)),
                              ),
                              margin: const EdgeInsets.all(4.0),
                              child: new Image.asset('images/avatar.jpg'),
                            ),
                          ),
                          new Expanded(
                            child: new Container(
                              decoration: new BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(const Radius.circular(8.0)),
                              ),
                              margin: const EdgeInsets.all(4.0),
                              child: new Image.asset('images/avatar.jpg'),
                            ),
                          ),
                          new Expanded(
                            child: new Container(
                              decoration: new BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(const Radius.circular(8.0)),
                              ),
                              margin: const EdgeInsets.all(4.0),
                              child: new Image.asset('images/avatar.jpg'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    new Container(
                      padding: EdgeInsets.fromLTRB(5, 5, 20, 5),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('6小时前'),
                          Container(
                            child: Row(
                              children: <Widget>[
                                new Icon(
                                  Icons.add_a_photo,
                                  color: Colors.black12
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    new Container(
                      padding: EdgeInsets.all(20),
                      child: new DecoratedBox(
                        decoration: BoxDecoration(
                          color:Colors.black12,
                          borderRadius: BorderRadius.circular(3.0), //3像素圆角
                        ),
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              padding: EdgeInsets.all(5),
                              child: new Row(
                                children: <Widget>[
                                  new Icon(
                                    Icons.favorite_border,
                                    color: Colors.grey,
                                    size: 16,
                                  ),
                                  Text('老板、'),
                                  Text('Ceo、'),
                                  Text('DBA'),
                                ],
                              ),
                            ),
                            new Container(
                              padding: EdgeInsets.all(10),
                              child: new Column(
                                children: <Widget>[
                                  new Row(
                                  children: <Widget>[
                                    new Text('老板:', style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.0,
                                        height: 1.3,  
                                    ),),
                                    new Text('公司明天集体过六一，带孩子',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.0,
                                        height: 1.3,  
                                      ),
                                    ),
                                  ],
                                  ),
                                  new Row(
                                    children: <Widget>[
                                      new Text('老板:', style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14.0,
                                          height: 1.3,  
                                      ),),
                                      new Text('公司明天集体过六一，带孩子',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14.0,
                                          height: 1.3,  
                                        ),
                                      ),
                                    ],
                                  ),
                                  new Row(
                                    children: <Widget>[
                                      new Text('老板:', style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14.0,
                                          height: 1.3,  
                                      ),),
                                      new Text('公司明天集体过六一，带孩子',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14.0,
                                          height: 1.3,  
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ),
                  ]
                )
            ),
        ],
        ) 
      ),
    );
   

    return new MaterialApp(
      theme: new ThemeData(
        primaryColor: Colors.red,
      ),
      home: new Scaffold(
        appBar: AppBar(
          title: Text("New friend"),
        ),
        body: new ListView(
          children: [
            bannerImg,
            userThings,
            userThings,
            userThings,
            userThings,
            userThings,
            userThings,
            userThings,
          ],
        ),
      ),
    );
  }

}