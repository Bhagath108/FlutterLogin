import 'package:flutter/material.dart';
class Taskc extends StatefulWidget {
  const Taskc({super.key});

  @override
  State<Taskc> createState() => _TaskcState();
}

class _TaskcState extends State<Taskc> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image(image:  NetworkImage('https://static.vecteezy.com/system/resources/previews/028/711/841/non_2x/group-of-business-people-talking-with-speech-bubbles-ai-generated-png.png'),),
              Text('Log In',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.orange
              ),),
              SizedBox(height: 15,),
              SizedBox(width: 200,
                child: Column(
                  children: [
                    TextField(
                      decoration:
                      InputDecoration(
                          border:
                          OutlineInputBorder(
                              borderRadius:
                              BorderRadius.circular(8)
                          ),labelText: 'Email',
                          hintText: 'abc@gmail.com'
                      ),
                    ),
                    SizedBox(height: 15,),
                    SizedBox(width: 200,
                      child: Column(
                        children: [
                          TextField(
                            obscureText: true,
                            decoration:
                            InputDecoration(
                              border:
                              OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.circular(8)
                              ),labelText: 'Password',

                            ),
                          ),
                          SizedBox(height: 15,),
                          ElevatedButton(onPressed: () {

                          },style: ElevatedButton.styleFrom(
                              backgroundColor:
                              Colors.deepOrange,shape:
                          RoundedRectangleBorder(
                            borderRadius:
                            BorderRadiusGeometry.all(Radius.circular(20)),)),
                              child:Text('Log In',style: TextStyle(color: Colors.white),)
                          ),
                          SizedBox(height: 15,),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                          child: Row(

                            children: [
                              Text('Log In With',style: TextStyle(color: Colors.black87)),

                              IconButton(

                                icon: Image.asset('assests/google.png',width: 25,height: 25,)
                                ,
                                iconSize: 10,
                                onPressed: () {

                                },
                              ),

                              IconButton(

                                icon: Image.asset('assests/facebook.png',width: 32,height: 32,)
                                ,
                                iconSize: 20,
                                onPressed: () {

                                },
                              ),
                              IconButton(

                                icon: Image.asset('assests/in.png',width: 32,height: 32,)
                                ,
                                iconSize: 20,
                                onPressed: () {

                                },
                              ),
                              SizedBox(height: 15,),

                            ],
                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('No account?,',style: TextStyle(color: Colors.black87,fontSize: 10,fontWeight: FontWeight.bold),),
                              Text('Sign Up',style: TextStyle(fontSize: 10,color: Colors.deepOrange,fontWeight: FontWeight.bold),),
                              Text('go check it out'),

                            ],
                          )




                        ],
                      ),
                    ),



                  ],
                ),

              ),]
        )
    );
  }
}
