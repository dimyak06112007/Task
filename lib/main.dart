import 'package:first_app/CalledByMain.dart';
import 'package:flutter/material.dart';

import './QuizMain.dart';

void main() {
  runApp(Main());
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text('My great test app'),
            ),
            body: CalledByMain()));
  }
}
