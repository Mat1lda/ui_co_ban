import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        ),
        home: ScreenTestHomePage());
  }
}

class ScreenTestHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }
}

class HomePageState extends State<ScreenTestHomePage> {
  var counter = 1;
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var textResult = Text("1");
    // TODO: implement build
    return Scaffold(
      //1 khung cho ui
      appBar: AppBar(
        title: const Text("matilda"),
      ),
      body: SafeArea(
        //can le dep luon
        child: Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //can chinh trong column
                crossAxisAlignment: CrossAxisAlignment.center,
                //khi khong dung Center
                children: [
                  Text("NÀY"),
                  Text("số lần mà mày làm tao khổ: "),
                  Text(
                    "$counter",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Text("nhưng bức ảnh này an ủi tao",
                  style: TextStyle(fontSize: 25,),),
                  Flexible(child: Image.asset("assets/firstTime.png")),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Flexible(child: TextField()),
                      //dung nhu nay ghi row de mat column
                      SizedBox(
                        width: 16,
                        height: 100,
                      ),
                      Text("Nhập vào đây"),
                    ],
                  ),
                  TextField(),
                  ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text("hihihi")));
                      },
                      child: Text("click me"))
                ],
              ),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: () {
          counter++;
          setState(() {});
        },
      ),
    );
  }
}
