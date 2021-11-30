import 'package:flutter/material.dart';

import 'Gridview_List.dart';
import 'List1.dart';
import 'Snackbar.dart';
import 'fastpage.dart';
import 'page1.dart';
import 'page2.dart';
import 'page3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      // initialRoute: '/',
      // routes: {'/': (context) => PageForth()},

      home: PageForth(),
      // (title: 'Login Page'),
    );
  }
}
