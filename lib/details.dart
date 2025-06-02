import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  final String name;
  final String age;
  final String address;
  final String phoneNo;
  final String Gender;

  const Details({
    super.key,
    required this.name,
    required this.age,
    required this.address,
    required this.phoneNo,
    required this.Gender,
  });

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Result',
          style: TextStyle(color: Colors.indigo),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Optional: center vertically
          children: [
            Text(widget.name, style: const TextStyle(fontSize: 20, color: Colors.black87)),
            Text(widget.age, style: const TextStyle(fontSize: 20, color: Colors.black87)),
            Text(widget.address, style: const TextStyle(fontSize: 20, color: Colors.black87)),
            Text(widget.phoneNo, style: const TextStyle(fontSize: 20, color: Colors.black87)),
            Text(widget.Gender, style: const TextStyle(fontSize: 20, color: Colors.black87)),
          ],
        ),
      ),
    );
  }
}
