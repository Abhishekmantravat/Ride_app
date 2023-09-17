import 'package:flutter/material.dart';
import 'package:rideapp/views/screens/homescreen.dart';
class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
 
  @override
  Widget build(BuildContext context) {
     double screenHeight =MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 25,right: 25),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("Set up your Account", style: TextStyle(fontSize: 30 ,fontWeight: FontWeight.bold, color: Colors.black),),
                                Text("Please introduce yourself  ", style: TextStyle( color: Colors.black),),
                    Text("Your name helps drivers identify you   ", style: TextStyle( color: Colors.black),),


SizedBox(height: 40,),

TextField(
                                                  style: TextStyle(color: Colors.black),
                                                  // controller:  phonenoController,


                      decoration: InputDecoration(
                        border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                        
                        hintText: "Full name",
                        labelText: "full Name",
                       

            
                        labelStyle:  TextStyle(color: Colors.black),
                      ),
                    ),
SizedBox(height: 10,),
                    TextField(
                                                  style: TextStyle(color: Colors.black),
                                                  // controller:  phonenoController,


                      decoration: InputDecoration(
                        border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                        labelText: "Email (Option)",
                        hintText: "example@gmail.com",

            
                        labelStyle:  TextStyle(color: Colors.black),
                      ),
                    ),

                     SizedBox(height: screenHeight-400),   

                
                    SizedBox(
                      height: 50,
                                        width: double.infinity,
                
                                        child: DecoratedBox(decoration: BoxDecoration(color: Colors.black,
                                                      borderRadius: BorderRadius.circular(5)
                ),
                
                      child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                          onPressed: ()  {

                            //  temp = await FirebaseAuthentication().sendOTP(phoneno.text).whenComplete((){  
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const homescreen()));
                            //   // print('+91$phonenoController');
                            //   });

                            
                          },
                          child: Text(
                            "Countinue",
                            style: TextStyle(color: Colors.white),
                          ))),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}