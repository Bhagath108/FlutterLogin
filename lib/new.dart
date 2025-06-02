import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hai/metroInterface.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {

    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const Interface(),));
    },);


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
         child: SizedBox(width:100,
           child: Column(
             mainAxisSize: MainAxisSize.max,
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Image(image: AssetImage('assests/metroLogo.jpeg'))
             ],
           ),
         ),
       ),
    );
  }
}
