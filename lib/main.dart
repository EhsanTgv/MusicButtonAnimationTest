import 'package:flutter/material.dart';

import 'blob.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Button Animation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Music Button Animation"),
      ),
      body: Scaffold(
        body: Center(
          child: SizedBox(
            height: 200,
            width: 200,
            child: Blob(
              color: Color(0xff0092ff), // color blue
              scale: 1,
              rotation: 0,
            ),
          ),
        ),
      ),
    );
  }
}
