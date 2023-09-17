
import 'package:flutter/material.dart';
import 'package:rideapp/views/screens/phone_otp.dart';

class phonelogin extends StatefulWidget {
   phonelogin({super.key});

  static  String result1="";

  @override
  State<phonelogin> createState() => _phoneloginState();
}

class _phoneloginState extends State<phonelogin> {
  TextEditingController countryController = TextEditingController();
    TextEditingController phonenoController = TextEditingController();
        // TextEditingController otpController = TextEditingController();

  
 @override
  void dispose() {
                        // controller.phoneno
// .dispose();
    // otpController.dispose();
    super.dispose();
  }



  @override
   void initState() {
    countryController.text = "+91";
    super.initState();
  }
 Widget build(BuildContext context) {
  
double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const BackButton(
          color: Colors.black54,
        ),
        
      ),
      
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 25, right: 25 ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15),    
                    Text("Enter Phone number for ", style: TextStyle(fontSize: 25 ,fontWeight: FontWeight.bold, color: Colors.black),),
                    // SizedBox(height: 1,),
                Text("verification ", style: TextStyle(fontSize: 25 ,fontWeight: FontWeight.bold, color: Colors.black),),
                SizedBox(height: 10,),
                    Text("This number will be used for all ride-related  ", style: TextStyle( color: Colors.black),),
                   Text("communication. You shall receive an SMS  ", style: TextStyle( color: Colors.black),),
                    Text("with code for verification. ", style: TextStyle( color: Colors.black),),

                 SizedBox(height: 40,),
              


               Container(
                height: 50,
                decoration: BoxDecoration(
                  border: BorderDirectional(bottom: BorderSide( color: Colors.blue))

                    // border: Border.all( color: Colors.grey),
                    // borderRadius: BorderRadius.circular(10)
                    ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 30,
                      child: TextField(
                        style: TextStyle(color: Colors.black),
                        // controller: countryController,
                                           controller: countryController,

                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Text(
                      "|",
                      style: TextStyle(fontSize: 33, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                        child: TextField(
                                                  style: TextStyle(color: Colors.black),
                                                  controller:  phonenoController,


                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Phone no",
                        hintStyle:  TextStyle(color: Colors.black),
                      ),
                    ))
                  ],
                ),
              ),
                    SizedBox(height: screenHeight-400),   

                
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> phoneotp(Phonenumber:  phonenoController.text.trim(),)));
                            //   // print('+91$phonenoController');
                            //   });

                            
                          },
                          child: Text(
                            "Verify Phone Number",
                            style: TextStyle(color: Colors.white),
                          ))),
                    ),

                   
                
               
              ],
            ),
          
        ),
      ),
    );
  }


  // Widget SendOTPButton(String text) => ElevatedButton(
  //   onPressed: () async {
  //     temp = await FirebaseAuthentication().sendOTP(phonenoController.text);
  //   },
  //   child: Text(text),
  // );


}
