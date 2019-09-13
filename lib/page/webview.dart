import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(new WebviewScreen());

class WebviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Builder(
        //   builder: (BuildContext context) {
        //     return IconButton(
        //       icon: const Icon(Icons.chevron_left),
        //       color: Colors.white,
        //       onPressed: () { 
        //         Navigator.pop(context);
        //        },
        //       tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        //     );
        //   },
        // ),
        // title: Text("租车宝", style: TextStyle(color: Colors.black),),
        // backgroundColor: Colors.white,
      ),
      body: const WebView(
        initialUrl: 'https://m.ctrip.com/webapp/cars/isdvbk/#/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
