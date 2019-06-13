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
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.blue,
      ),
      // 首页路由
      home: new MyHomePage( title: 'Welcome Flutter' )
    );
  }
}

// 下面实现一个计数器
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String title = '12';
  void incrementCounter () {
    print(title);
    setState(() {
      _counter += 10;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('incrementCount'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('请点击右下角的加号按钮对数据进行增加！'),
            Text(
              '现在数据的结果为：$_counter',
              textAlign: TextAlign.center,
              ),
            FlatButton(
              child: Text('open new router'),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由   
                Navigator.push( context,
                new MaterialPageRoute(builder: (context) {
                  return new NewRouter();
                }));
              },
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add)
      )
    );
  }
}

class NewRouter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Router'),
      ),
      body: Center(
        child: Text('This is new route'),
      ),
    );
  }
}