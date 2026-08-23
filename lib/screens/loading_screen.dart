import 'package:flutter/material.dart';
import 'dart:async';
import 'home_screen.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});
  @override
  State<LoadingScreen> createState() => _LoadingScreenState();

}
class _LoadingScreenState extends State<LoadingScreen>{
  @override
  void initState(){
    super.initState();
    Timer(
        Duration(seconds: 2),
            (){}
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.check_circle,
              size: 50,
            ),
            SizedBox(height: 10),
            const Text(
              "ToDo App",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 20),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
