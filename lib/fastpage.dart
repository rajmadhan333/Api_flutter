import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              _stackView(),
              SizedBox(
                height: 100,
              ),
              Container(
                width: 200,
                height: 300,

                decoration: BoxDecoration(
                  color: Colors.green,
                  // shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage('assets/2.jpg')),
                ),
                // child: Image.asset(
                //   "assets/images/lol.png",
                // ),
              ),
              _wrapView()
            ],
          ),
        ),
      ),
    );
  }

  Widget _stackView() => Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 150,
            width: 150,
            color: Colors.yellow,
          ),
          Positioned(
            top: 70,
            left: 50,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.red,
          ),
        ],
      );

  _wrapView() => Container(
        height: 80,
        color: Colors.red,
        child: Container(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Chip(label: Text("Food")),
              Chip(label: Text("Food")),
              Chip(label: Text("Food")),
              Chip(label: Text("Food")),
              Chip(label: Text("Food")),
              Chip(label: Text("Food")),
              Chip(label: Text("Food")),
              Chip(label: Text("Food")),
              Chip(label: Text("Food")),
              Chip(label: Text("Food")),
              Chip(label: Text("Food")),
              Chip(label: Text("Food")),
              Chip(label: Text("Food")),
              Chip(label: Text("Food")),
              Chip(label: Text("Food")),
              Chip(label: Text("Food")),
              Chip(label: Text("Food")),
              Chip(label: Text("Food")),
              Chip(label: Text("Food")),
              Chip(label: Text("Food")),
              Chip(label: Text("Food")),
              Chip(label: Text("Food")),
              Chip(label: Text("Food")),
              Chip(label: Text("Food")),
              Chip(label: Text("Food")),
              Chip(label: Text("Food")),
              Chip(label: Text("Food")),
              Chip(label: Text("Food")),
              Chip(label: Text("Food")),
              Chip(label: Text("Food")),
              Chip(label: Text("Food")),
              Chip(label: Text("Food")),
            ],
          ),
        ),
      );
}
