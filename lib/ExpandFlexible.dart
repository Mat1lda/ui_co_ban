import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        ),
        home: MyStatelessWidget());
  }
}
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded Column Sample'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
          child: Center(
            child: Column(
              children: <Widget>[
                buildStack(),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.amber,
                    width: 100,
                    height: 300,
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 2,
                        child: Container(
                          color: Colors.redAccent,
                          width: 100,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        color: Colors.grey,
                        width: 60,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Container(
                          color: Colors.brown,
                          width: 100,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.greenAccent,
                    width: 100,
                    height: 300,
                  ),
                ),
                buildDecorationText(),
                SizedBox(
                  height: 10,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildDecorationText() {
    return SizedBox(
      width: 250,
      height: 250,
      child: Stack(
        children: <Widget>[
          Container(
            width: 250,
            height: 250,
            color: Colors.white,
          ),
          Container(
            padding: const EdgeInsets.all(5.0),
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,

                colors: <Color>[
                  Colors.black.withAlpha(0),
                  Colors.black12,
                  Colors.black45
                ],
              ),
            ),
            child: const Text(
              'Foreground Text',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildStack() {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,//dieu chinh vi tri stack
      clipBehavior: Clip.antiAlias, //quen roi
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
        Container(
          width: 90,
          height: 90,
          color: Colors.green,
        ),
        Positioned(//dieu chinh vi tri trong stack
          left: 0,

          top: 10,
          child: Container(
            width: 80,
            height: 80,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}