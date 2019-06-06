import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(new WebviewScreen());

class WebviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.chevron_left),
              color: Colors.black,
              onPressed: () { 
                Navigator.pop(context);
               },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Text("webview", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
      ),
      body: const WebView(
        initialUrl: 'https://www.baidu.com/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
