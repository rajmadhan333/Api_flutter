import 'package:flutter/material.dart';

class SnackBar extends StatelessWidget {
  const SnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar Demo"),
      ),
      body: SnackBar(),
    );
  }
}
