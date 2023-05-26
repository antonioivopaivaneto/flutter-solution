import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(webapp());

class  webapp extends StatelessWidget {
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solution Sindicância',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: Scaffold(
        appBar:AppBar(
          title: Text("App Solution"),
        ) ,
        body: Center(
          child: WebView(initialUrl: 'https://ozshop.com.br/app-solution/',
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewcontroller){
              _controller = webViewcontroller;

            },),
        ),
      ),
    );
  }
}
