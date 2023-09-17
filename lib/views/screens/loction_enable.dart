import 'package:flutter/material.dart';
import 'package:rideapp/views/screens/register.dart';
class location_enable extends StatelessWidget {
  const location_enable
({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body:SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 25, right: 20, ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 400 ,
                width: double.infinity,
                color: Colors.grey,
                
        
                
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Turn your location on",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 30),)
        
                ],
                
              ),
              Text("you can't create orders and find drivers",style: TextStyle(color: Colors.black,)),
                          Text("unless we have your location info. please",style: TextStyle(color: Colors.black,)),
        
              Text("open your phone settings and allow the ",style: TextStyle(color: Colors.black,)),
        
              Text("app to access your location",style: TextStyle(color: Colors.black,)),
        
          SizedBox(height: screenHeight/7),   
        
                  
                      SizedBox(
                        height: 45,
                                          width: double.infinity,
                  
                                          child: DecoratedBox(decoration: BoxDecoration(color: Colors.black,
                                                        borderRadius: BorderRadius.circular(5)
                  ),
                  
                        child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                            onPressed: ()  {
        
                              //  temp = await FirebaseAuthentication().sendOTP(phoneno.text).whenComplete((){  
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> register()));
                              //   // print('+91$phonenoController');
                              //   });
        
                              
                            },
                            child: Text(
                              "ALLOW",
                              style: TextStyle( fontSize: 20, color: Colors.white),
                            ))),
                      ),
            ],
            
          ),
        ),
      )
    );
  }
}