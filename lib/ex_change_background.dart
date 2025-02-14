import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(HomeApp());
}

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(theme: ThemeData(), home: ChangeBackGroundHomePage());
  }
}

class ChangeBackGroundHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePateState();
  }
}

class HomePateState extends State<ChangeBackGroundHomePage> {
  var counter = 0;
  final myController = TextEditingController();
  var listColor = [Colors.blueGrey, Colors.blue, Colors.cyan];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: listColor[Random().nextInt(2)],
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("nhấn để đổi màu background",
                style: TextStyle(fontSize: 30, )),
                Text("$counter", style: Theme.of(context).textTheme.headlineLarge,),
                ElevatedButton(
                    onPressed: () {
                      counter++;
                      setState(() {});
                    },
                    child: Icon(Icons.plus_one)),
                ElevatedButton(
                    onPressed: () {
                      counter--;
                      setState(() {});
                    },
                    child: Icon(Icons.exposure_minus_1))
              ],
            ),
          ),
        )));
  }
}
