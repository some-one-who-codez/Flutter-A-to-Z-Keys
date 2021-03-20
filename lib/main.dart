import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> widgets = [
    ColorBlock(
      key: UniqueKey(),
    ),
    ColorBlock(
      key: UniqueKey(),
    ),
    ColorBlock(
      key: UniqueKey(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keys'),
        centerTitle: true,
      ),
      body: Row(
        children: widgets,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          CupertinoIcons.shuffle,
        ),
        onPressed: () {
          setState(() {
            widgets.shuffle();
          });
        },
      ),
    );
  }
}

class ColorBlock extends StatefulWidget {
  ColorBlock({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => ColorBlockState();
}

class ColorBlockState extends State<ColorBlock> {
  Color color;
  @override
  void initState() {
    super.initState();
    color = Colors.primaries.elementAt(Random().nextInt(10));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: color,
    );
  }
}
