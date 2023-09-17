import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:rideapp/views/screens/loction_enable.dart';
import 'package:rideapp/views/screens/phone_verification.dart';



class phoneotp extends StatefulWidget {
   phoneotp({required this.Phonenumber  });
String Phonenumber ;

  @override
  State<phoneotp> createState() => _phoneotpState();
}

class _phoneotpState extends State<phoneotp> {
          // TextEditingController otpController = TextEditingController();


  @override
  // void dispose() {
  //   otp.dispose();
  //   super.dispose();
  // }
  
 Widget build(BuildContext context) {
  final defaultPinTheme = PinTheme(
  width: 56,
  height: 56,
  textStyle: TextStyle(fontSize: 20, color: Colors.black54, fontWeight: FontWeight.w600),
  decoration: BoxDecoration(
    border: Border.all(color: Colors.black),
    borderRadius: BorderRadius.circular(11),
  ),
);

final focusedPinTheme = defaultPinTheme.copyDecorationWith(
  border: Border.all(color: Colors.black),
  borderRadius: BorderRadius.circular(8),
);


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(
          color: Colors.black54,
        ),
        
      ),
      
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //
                
                    Text("Enter the code", style: TextStyle(fontSize: 30 ,fontWeight: FontWeight.bold, color:  Colors.black), textAlign: TextAlign.center,),
                      
                   
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:[
                    Text("sent to +91", style: TextStyle(  color: Colors.black),),
                    SizedBox(width: 3,),
                    Text(widget.Phonenumber, style: const TextStyle( fontWeight: FontWeight.bold,  color: Colors.black),)
                  ]
                ),

                SizedBox(height:50),      

             Pinput(
 length: 6,
 defaultPinTheme: defaultPinTheme,
  focusedPinTheme: focusedPinTheme,
//  controller: otp,
  // onChanged: (value) {
  //   otp=value;
  // },
  
  //  androidSmsAutofillMethod:  AndroidSmsAutofillMethod.smsRetrieverApi,

  // validator: (s) {
  //   return s == '2222' ? null : 'Pin is incorrect';
  // },
  // pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
  showCursor: true,
  // onCompleted: (pin) => print(pin),
),

SizedBox(height:5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> phonelogin()));
                    },
                         child: Text("Edit Phone Number. ?",
                        style: TextStyle(color:  Colors.black))),
                 ],
                ),
                    SizedBox(height: 25),
                
                    SizedBox(
                      height: 45,
                                        width: double.infinity,
                
                                        child: DecoratedBox(decoration: BoxDecoration(color:  Colors.black,
                                                      borderRadius: BorderRadius.circular(5)
                ),
                
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                          onPressed: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=> location_enable()));

                            // FirebaseAuthentication().authenticate(temp, otp.text);
                            
                            // .whenComplete((){  // print('+91$phonenoController');
                            //   });
                          },
                          child: Text(
                            "Next",
                            style: TextStyle(color: Colors.white),
                          ))
                          ),
                    ),

                   
                
                
               
              ],
            ),
          
        ),
      ),
    );
  }
  


  
  
}








