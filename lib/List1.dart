import 'package:flutter/material.dart';

class MyList extends StatefulWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  List _data = [
    "Jay",
    "Krish",
    "Kuldip",
    "jayesh",
    "Haresh",
    "Naresh",
    "Parth",
    "Om",
    "Sahil",
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
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext, int index) {
                  return Container(
                    margin: EdgeInsets.all(15),
                    color: Colors.amber,
                    child: ListTile(
                      title: Text("list items ${_data[index]}"),
                    ),
                  );
                }),
          )
        ],
      ),
      // body: Container(
      //   child: Column(
      //     children: [
      //       ListView.builder(itemBuilder: (BuildContext context, int index) {
      //         return Container();
      //       })
      //     ],
      //   ),
      // ),
    );
  }
}
