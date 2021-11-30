import 'package:flutter/material.dart';

class Gridview extends StatefulWidget {
  Gridview({Key? key}) : super(key: key);

  @override
  _GridviewState createState() => _GridviewState();
}

class _GridviewState extends State<Gridview> {
  List name = [
    "krish",
    "Raj",
    "Jay",
    "Kuldip",
    "Yash",
    "ramesh",
    "Suresh",
    "Vikas",
    "prakash",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              child: GridView.builder(
            itemCount: name.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1),
            itemBuilder: (BuildContext context, index) {
              return Container(
                height: 100,
                width: 100,
                color: Colors.amber,
                child: Center(
                  child: Text("${name[index]}"),
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
