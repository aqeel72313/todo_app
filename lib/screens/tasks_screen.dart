import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({
    super.key
    List<String> task=[];

  });
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("My Tasks"),
      ),
    );
  }
}