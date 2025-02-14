import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("list view lmao", style: TextStyle(color: Colors.white)),
      ),
      body: SafeArea(
          child: Column(children: [
        Container(
          height: 150,
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              Container(
                height: 50,
                color: Colors.amber[600],
                child: const Center(child: Text('Entry A')),
              ),
              Container(
                height: 50,
                color: Colors.amber[500],
                child: const Center(child: Text('Entry B')),
              ),
              Container(
                height: 50,
                color: Colors.amber[100],
                child: const Center(child: Text('Entry C')),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        listViewBuilder2(),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    countItems++;
                    entries.add(countItems.toString());
                    colorCodes.add(200 - countItems * 20);
                  });
                },
                child: Text("Add Item")),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(onPressed: () {
              setState(() {
                if(countItems != 0){
                  countItems --;
                  entries.removeLast();
                  colorCodes.removeLast();
                }
              });
            }, child: Text("Remove Item")),
          ],
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("come back")),
      ])),
    );
  }
}

int countItems = 0;
List<String> entries = <String>['A', 'B', 'C'];
List<int> colorCodes = <int>[600, 500, 100];

Widget listViewBuilder2() {
  //another way to build listView

  return Container(
    height: 180,
    child: ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(// lam cho item bam dc
          //de su kien ow day
          onTap: (){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Item ${entries[index]}")));
          },
          child: Container(
            height: 50,
            color: Colors.blue[colorCodes[index]],
            child: Center(child: Text('Title ${entries[index]}')),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    ),
  );
}
