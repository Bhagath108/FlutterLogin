import 'package:flutter/material.dart';
class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController emailcontroller =
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignUp Page'),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              TextField(
                controller: emailcontroller,
                decoration:
                InputDecoration(
                  border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(8)
                  ),
                  labelText: 'Email',
                  hintText: 'abc@gmail.com',
                ),

              ),
              SizedBox(height:10 ,),
              TextField(
                obscureText: true,
                controller: passwordcontroller,
                decoration:
                InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)
                    ),
                  labelText: 'password'

                ),

              )
              ElevatedButton(onPressed: () {

              }, )

            ],
          ),


          ],
        ),
      ),
    );
  }
}
