// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// app框架组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext content) {
    return MaterialApp(
      title: 'Welcome Fullter!',
      theme: new ThemeData(
        // brightness: Brightness.light,
        // primaryColor: Colors.lightBlue[800],
        // accentColor: Colors.blue,
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(
        title: 'Welcome Flutter',
      )
    );
  }
}

// 页面组件
class MyHomePage extends StatelessWidget {
  final String title; // 定义常量title
  MyHomePage({Key key, @required this.title}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          color: Theme.of(context).accentColor,
          // color: Colors.red,
          child: new Text(
            'hello word! hello word! hello word! hello word! hello word! hello word!',
            textAlign: TextAlign.center,
            // style: Theme.of(context).textTheme.title,
          ),
        ),
      ),
    );
  }
}