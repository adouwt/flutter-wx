import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
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
                children: [
                  GestureDetector(
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
                ],
              ),
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
        
      ],
    );


    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: [
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    'Oeschinen Lake Campground',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Text(
                  'Kandersteg, Switzerland',
                  style: new TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          new Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          new Text('41'),
        ],
      ),
    );
   
    Column buildButtonColumn(IconData icon, String label) {
        Color color = Theme.of(context).primaryColor;
        return new Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Icon(icon, color: color),
            new Container(
              margin: const EdgeInsets.only(top: 8.0),
              child: new Text(
                label,
                style: new TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: color,
                ),
              ),
            ),
          ],
        );
    }

    Widget buttonSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(Icons.call, 'CALL'),
          buildButtonColumn(Icons.near_me, 'ROUTE'),
          buildButtonColumn(Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget textSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
        softWrap: true,
      ),
    );

    return new MaterialApp(
      title: 'hello Flutter', // 页面上没有用？
      theme: new ThemeData(
        primaryColor: Colors.red,
      ),
      home: new Scaffold(
        // appBar: new AppBar(
        //   title: new Text('朋友圈'),
        // ),
        body: new ListView(
          children: [
            // new Image.asset(
            //   'images/banner-phone.png',
            //   width: 600.0,
            //   height: 240.0,
            //   fit: BoxFit.cover,
            // ),
            bannerImg,
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

}