import 'package:flutter/material.dart';
import 'package:ui_co_ban/gridView_screen.dart';
import 'package:ui_co_ban/listView_screen.dart';

void main() {
  runApp(MyApp());
}

int plus(int a, int b) {
  return a + b;
}

int minus(int a, int b) {
  return a - b;
}

int multiple(int a, int b) {
  return a * b;
}

double divide(int a, int b) {
  return a / b;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }
}

class HomePageState extends State<Calculator> {
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  var result;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("calculator", style: TextStyle(color: Colors.white)),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/img2.png"),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          gapPadding: 10)),
                  controller: myController1,
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          gapPadding: 10)),
                  controller: myController2,
                ),
                Text(
                  "Kết quả là: ",
                  style: TextStyle(fontSize: 40),
                ),
                Text(
                  "$result",
                  style: TextStyle(fontSize: 40),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 70,
                        height: 40,
                        child: ElevatedButton(
                            onPressed: () {
                              int? n1 = int.parse(myController1.text);
                              int? n2 = int.parse(myController2.text);
                              result = plus(n1, n2);

                              setState(() {});
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                            ),
                            child: Text(
                              "+",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 70,
                        height: 40,
                        child: ElevatedButton(
                            onPressed: () {
                              int? n1 = int.parse(myController1.text);
                              int? n2 = int.parse(myController2.text);
                              result = minus(n1, n2);
                              setState(() {});
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepPurple),
                            child: Text(
                              "-",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 70,
                        height: 40,
                        child: ElevatedButton(
                            onPressed: () {
                              int? n1 = int.parse(myController1.text);
                              int? n2 = int.parse(myController2.text);
                              result = multiple(n1, n2);
                              setState(() {});
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueGrey),
                            child: Text(
                              "x",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 70,
                        height: 40,
                        child: ElevatedButton(
                            onPressed: () {
                              int? n1 = int.parse(myController1.text);
                              int? n2 = int.parse(myController2.text);
                              result = divide(n1, n2);
                              setState(() {});
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.amber),
                            child: Text(
                              ":",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            )),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return GridviewScreen();
                      }));
                    },
                    child: Text("Đổi màn hình")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
