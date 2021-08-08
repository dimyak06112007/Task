import 'package:first_app/Notes/NotesMainScreen.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import './QuizMain.dart';

class CalledByMain extends StatefulWidget {
  @override
  _CalledByMainState createState() => _CalledByMainState();
}

class _CalledByMainState extends State<CalledByMain> {
  final _random = Random();
  Color _color = Color(0xFFFFFFFF);
  void changeColor() {
    setState(() {
      _color = Color.fromRGBO(_random.nextInt(256), _random.nextInt(256),
          _random.nextInt(256), 1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle styleMyButton =
        ElevatedButton.styleFrom(primary: Colors.black);
    return Scaffold(
        body: GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => changeColor(),
      child: Container(
        color: _color,
        width: double.infinity,
        child: Stack(
          children: [
            Align(
              child: Container(
                alignment: Alignment(0.0, 0.0),
                width: double.infinity,
                child: Text(
                  "Hey there",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
            Align(
                child: Container(
                    width: double.infinity,
                    alignment: Alignment(0.0, 0.2),
                    child: ElevatedButton(
                        style: styleMyButton,
                        child: Text(
                          "Take a Quize!",
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyApp()),
                          );
                        }))),
            Align(
                child: Container(
                    alignment: Alignment(0.0, 0.4),
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.orange),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NotesPage()));
                        print("note taking button");
                      },
                      child: Text("Make some notes!"),
                    ))),
          ],
        ),
      ),
    ));
  }
}
