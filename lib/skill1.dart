import 'package:flutter/material.dart';

class Hello extends StatefulWidget {
  const Hello({super.key});

  @override
  State<Hello> createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController agecontroller = TextEditingController();
  TextEditingController collegecontroller = TextEditingController();
  String name='Sreehari';
  String age='25';
  String college='CUCEK';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
      [Icon(Icons.handshake),Text('Welcome')],
      ),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [

            TextField(
              controller: namecontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),//labelText: "enter your name",
                hintText: "name",
              ),
            ),
             SizedBox()

                      ),
            ElevatedButton(onPressed: () {
              setState(() {
                name=namecontroller.text;
                age=agecontroller.text;
                college=collegecontroller.text;
              });
            }, child: Text('submit')),
            Text(name),
            Text(age),
            Text(college),

          ],
        ),
      ),
    );
  }
}

