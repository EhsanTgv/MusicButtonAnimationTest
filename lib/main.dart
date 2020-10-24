import 'package:flutter/material.dart';

import 'blob.dart';
import 'play_button_basic.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Button Animation',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: Color.fromARGB(255, 18, 32, 47)),
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
      body: Scaffold(
        body: Center(
          child: SizedBox(
            height: 200,
            width: 200,
            child: PlayButton(
              pauseIcon: Icon(Icons.pause, color: Colors.black, size: 90),
              playIcon: Icon(Icons.play_arrow, color: Colors.black, size: 90),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
