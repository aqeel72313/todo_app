import 'package:flutter/material.dart';
import 'package:todo_app/screens/tasks_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
@override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> task = [];
  TextEditingController taskController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ToDo App"),
      ),
      body: Center(
        // Main Container

        child: Container(
          width: 400,
          height: 300,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color(0xFFAFE3F4),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [BoxShadow(
              color: Color(0xFFBCBCBC),
              spreadRadius: 2,
              blurRadius: 15,
            ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "What's you want to do?",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 10,),
                // Text Field

                TextField(
                  controller: taskController,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.add_task),
                      hintText: "Enter your task...",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      )
                  ),
                ),
                SizedBox(height: 15,),

                // Elevated Button

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(370, 50),
                    backgroundColor: Color(0xFF92E1FF),
                  ),
                  onPressed: () {
                    setState(() {
                      task.add({
                        "title": taskController.text,
                        "completed": false,
                      });
                    });
                  },
                  child: Text(
                    "Save",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 24,
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(370, 50),
                    backgroundColor: Color(0xFF92E1FF),
                  ),
                  onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TasksScreen(task: task),
                        )
                      );
                  },
                  child: Text(
                    "View Tasks",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}