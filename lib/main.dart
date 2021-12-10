import 'package:flutter/material.dart';
import 'package:parth/radio.dart';
import 'package:parth/radiobutton.dart';
import 'package:parth/time_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // initialRoute: '/',
      // routes: {'/': (context) => PageForth()},

      home: CheckboxPage(),
      // (title: 'Login Page'),
    );
  }
}
