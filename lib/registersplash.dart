import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hai/register.dart';
import 'package:lottie/lottie.dart';

class Registersplash extends StatefulWidget {
  const Registersplash({super.key});

  @override
  State<Registersplash> createState() => _RegistersplashState();
}

class _RegistersplashState extends State<Registersplash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const Register()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Lottie.asset('assests/login.json')],
          ),
        ),
      ),
    );
  }
}
