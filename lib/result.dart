import 'package:flutter/material.dart';
class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Loading...........",style: TextStyle(fontSize: 50),)),
    );
  }
}
