import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CheckboxPage extends StatefulWidget {
  const CheckboxPage({Key? key}) : super(key: key);

  @override
  _CheckboxPageState createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  bool isDeleted = false;
  TimeOfDay time = TimeOfDay.now();
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(
            title: Text("Show / Hide"),
            trailing: Switch(
                value: !isDeleted,
                onChanged: (bool flag) {
                  setState(() => isDeleted = !flag);
                }),
          ),
          isDeleted
              ? SizedBox()
              : ListTile(
                  title: Text("Item to be delete from alert"),
                  onTap: () async {
                    var res = await showDialog(
                        context: context, builder: (context) => DeleteAlert());
                    if (res != null) {
                      setState(() => isDeleted = res);
                      // ScaffoldMessenger.of(context).clearSnackBars();
                      // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      //   content: Text("Delete success"),
                      //   duration: Duration(milliseconds: 500),
                      // ));
                      Fluttertoast.showToast(
                        msg: "Delete success",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                      );
                    }
                  },
                ),
          ListTile(
            title: Text("Bottom Sheet"),
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) => Container(
                        height: 200,
                        width: double.infinity,
                        color: Colors.redAccent,
                        child: ListView(
                          children: [
                            ListTile(
                              title: Text("Show / Hide"),
                            ),
                          ],
                        ),
                      ));
            },
          ),
          ListTile(
            title: Text("Time is - ${time.format(context)} "),
            onTap: () async {
              var selectedTime = await showTimePicker(
                context: context,
                initialTime: time,
              );
              if (selectedTime != null) {
                setState(() {
                  time = selectedTime;
                });
                print(time.format(context));
              }
            },
          ),
          ListTile(
            title: Text("Date is - ${date} "),
            onTap: () async {
              var selectedDate = await showDatePicker(
                  context: context,
                  initialDate: date,
                  firstDate: DateTime(2015, 2),
                  lastDate: date);
              if (selectedDate != null) {
                setState(() {
                  date = selectedDate;
                });
                print(date);
              }
            },
          ),
        ],
      ),
    );
  }
}

class DeleteAlert extends StatelessWidget {
  const DeleteAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? AlertDialog(
            title: Text("Delete"),
            content: Text("Are you sure you want to delete?"),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text("Cancel"),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, true),
                child: Text("OK"),
              )
            ],
          )
        : CupertinoAlertDialog(
            title: Text("Delete"),
            content: Text("Are you sure you want to delete?"),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text("Cancel"),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, true),
                child: Text("OK"),
              )
            ],
          );
    // return AlertDialog(
    //   title: Text("Delete"),
    //   content: Text("Are you sure you want to delete?"),
    //   actions: [
    //     TextButton(
    //       onPressed: () => Navigator.pop(context),
    //       child: Text("Cancel"),
    //     ),
    //     TextButton(
    //       onPressed: () => Navigator.pop(context, true),
    //       child: Text("OK"),
    //     )
    //   ],
    // );
  }
}