import 'dart:ffi';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// Status less방식과 state ful 방식
class MyApp extends StatelessWidget { // 정적
  @override
  Widget build(BuildContext context) { // App을 build
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'Flutter Demo Home Page')
    );
  }
}

class MyHomePage extends StatefulWidget { // 동적
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  // const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; // _로 시작하는 변수는 private : class 내부에서만 사용


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text(widget.title)), // 상단 header바
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('You have pushed the button this many times:'),
          Text('$_counter', style: Theme.of(context).textTheme.displayMedium) // 변수는 $_***
        ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'increment',
        child: Icon(Icons.add)
      ),
    );
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
}

