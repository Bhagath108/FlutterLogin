import 'package:flutter/material.dart';
import 'package:hai/result.dart';

class Interface extends StatefulWidget {
  const Interface({super.key});

  @override
  State<Interface> createState() => _InterfaceState();
}

class _InterfaceState extends State<Interface> {

  TextEditingController pincontroller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Center(
        child: Column(

          children: [
            SizedBox(width: 100,
              child:
              Image(image: AssetImage('assests/metroLogo.jpeg')),
        
        
            ),
            SizedBox(height: 20,),
            Text('Enter The Pin',style: TextStyle(fontSize: 20),),
            SizedBox(

              width: 200,height: 60,
              child: TextField(
                controller :pincontroller,
                obscureText:true ,
                decoration: InputDecoration(border:
               OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                labelText: 'Pin'),



              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              if(pincontroller.text=='1234'){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) =>Result() ,));
              }

            },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo,shape: RoundedSuperellipseBorder(borderRadius: BorderRadiusGeometry.circular(20))),
                child: Text('SUBMIT',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),))










          ],

        ),
      ),



    );
  }
}
