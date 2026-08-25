import 'package:flutter/material.dart';

class TasksScreen extends StatefulWidget {
  final List<String> task;

  const TasksScreen({
    super.key,
    required this.task
  });

  @override
  State<TasksScreen> createState() => _TasksScreen();
}
class _TasksScreen extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Tasks"),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: widget.task.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(widget.task[index]),
                trailing: IconButton(
                  onPressed: () {
                    setState(() {
                      widget.task.removeAt(index);
                    });
                  },
                  icon: Icon(Icons.delete),
                ),
              );
            }),
      ),
    );
  }
}