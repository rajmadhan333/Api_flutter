import 'package:flutter/material.dart';
import 'package:parth/Models/Task_Modals.dart';

class TaskList extends StatefulWidget {
  TaskList({Key? key}) : super(key: key);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<TaskModel> tasks = [];
  bool isloading = false;

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {794429
    return Scaffold(
      body: isloading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) => ListTile(
                  // leading: ,
                  )),
    );
  }

  void getData() {}
}
