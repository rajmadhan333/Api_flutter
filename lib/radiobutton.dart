import 'package:flutter/material.dart';

enum pepole { male, Female, Other }

class RadioButton extends StatefulWidget {
  RadioButton({Key? key}) : super(key: key);

  @override
  _RadioButtonState createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  pepole person = pepole.male;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Button"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          RadioListTile(
              activeColor: Colors.amber,
              controlAffinity: ListTileControlAffinity.platform,
              title: Text("Male"),
              value: pepole.male,
              groupValue: person,
              onChanged: (val) => raj(val)),
          RadioListTile(
              activeColor: Colors.blue,
              title: Text("Female"),
              value: pepole.Female,
              groupValue: person,
              onChanged: (val) => raj(val)),
          RadioListTile(
              activeColor: Colors.green,
              title: Text("Other"),
              value: pepole.Other,
              groupValue: person,
              onChanged: (val) => raj(val)),
        ],
      ),
    );
  }

  raj(value) {
    setState(() {
      switch (value) {
        case pepole.male:
          person = pepole.male;
          break;
        case pepole.Female:
          person = pepole.Female;
          break;
        case pepole.Other:
          person = pepole.Other;
          break;
        default:
      }
    });
  }
}
