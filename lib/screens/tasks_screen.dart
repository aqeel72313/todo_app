import 'package:flutter/material.dart';

class TasksScreen extends StatefulWidget {
  final List<Map<String, dynamic>> task;

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
                leading: Checkbox(value: true, onChanged: ),
                title: Text(widget.task[index]["title"]),
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