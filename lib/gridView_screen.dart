import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
final List<String> images = <String>[
  "assets/band.png",
  "assets/band.png",
  "assets/band.png",
  "assets/band.png",
  "assets/band.png",
  "assets/band.png",
  "assets/band.png",
  "assets/band.png",
  "assets/band.png",
];
final List<String> types = <String>[
  "Demo",
  'Product',
  "Ao thun",
  "Demo",
  'Product',
  "Ao thun",
  "Demo",
  'Product',
  "Ao thun"
];
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white)
      ),
      home: GridviewScreen(),
    );
  }

}
class GridviewScreen extends StatefulWidget {
  const GridviewScreen({super.key});

  @override
  State<GridviewScreen> createState() => _GridviewScreenState();
}



class _GridviewScreenState extends State<GridviewScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          "My Shop",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: GridView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: images.length,

            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 4),
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: (){},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox(
                    child: Stack(

                      children: [
                        Container(
                          width: 200,
                          height: 200,
                          child: Image.asset(
                            images[index],
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(1),
                          alignment: Alignment.bottomCenter,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.center,
                              end: Alignment.bottomCenter,
                              colors: <Color>[
                                Colors.black12,
                                Colors.black87,
                                Colors.black87
                              ],
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                  
                                  child: Icon(Icons.favorite_border, color: Colors.purple,))
                              ,
                              SizedBox(width: 15,),
                               Text(
                                '${types[index]}',
                                style: TextStyle(color: Colors.white, fontSize: 15.0),
                              ),
                              SizedBox(width: 15,),
                              Icon(Icons.shopping_cart_outlined, color: Colors.purple,),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      )),
    );
  }
}
