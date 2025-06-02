import 'package:flutter/material.dart';
import 'package:hai/details.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController agecontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();
  TextEditingController phoneNocontroller = TextEditingController();
  String selectedGender = '';
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.format_align_justify_rounded),
        title: Text(
          'Application',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black87,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                child: TextField(
                  controller: namecontroller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      labelText: 'name',
                      hintText: 'enter your name'),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 200,
                child: TextField(
                  controller: agecontroller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      labelText: 'age',
                      hintText: 'enter your age'),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 200,
                child: TextField(
                  controller: addresscontroller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      labelText: 'address',
                      hintText: 'enter your address'),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 200,
                child: TextField(
                  controller: phoneNocontroller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      labelText: 'phoneNo',
                      hintText: 'enter your phoneNo'),
                ),
              ),
              SizedBox(height: 10),
              Text('Gender'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RadioMenuButton(
                      value: 'Male',
                      groupValue: selectedGender,
                      onChanged: (value) {
                        setState(() {
                          selectedGender = value!;
                        });
                      },
                      child: Text('Male')),
                  SizedBox(
                    width: 20,
                  ),
                  RadioMenuButton(
                      value: 'Female',
                      groupValue: selectedGender,
                      onChanged: (value) {
                        setState(() {
                          selectedGender = value!;
                        });
                      },
                      child: Text('Female')),
                ],
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Details(
                          name: namecontroller.text,
                          age: agecontroller.text,
                          address: addresscontroller.text,
                          phoneNo: phoneNocontroller.text,
                          Gender: selectedGender),
                    ));
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.white),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Text('i have read the above content'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
