import 'package:flutter/material.dart';

enum Gender { MALE, FEMALE }

class radio2 extends StatefulWidget {
  radio2({Key? key}) : super(key: key);

  @override
  _radio2 createState() => _radio2();
}

class _radio2 extends State<radio2> {
  bool? _isAdult = false;
  bool? genderVal = true;
  Gender gender = Gender.FEMALE;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            onTap: () => setState(() {
              if (_isAdult!)
                _isAdult = false;
              else
                _isAdult = true;
            }),
            leading: Checkbox(
                value: _isAdult,
                onChanged: (val) {
                  setState(() {
                    _isAdult = val;
                  });
                }),
            title: Text("Are you adult?"),
          ),
          Column(
            children: [
              Row(
                children: [
                  Radio(
                      value: Gender.MALE,
                      groupValue: gender,
                      onChanged: onRadioPress),
                  Text("Male"),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: Gender.FEMALE,
                    groupValue: gender,
                    onChanged: onRadioPress,
                  ),
                  Text("Female"),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  void onRadioPress(Gender? value) {
    setState(() {
      switch (value) {
        case Gender.MALE:
          gender = Gender.MALE;

          break;
        case Gender.FEMALE:
          gender = Gender.FEMALE;
          break;
        default:
      }
    });
  }
}
