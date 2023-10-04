import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:rideapp/res/constant/button.dart';
import 'package:rideapp/view/screens/loction_enable.dart';
import 'package:rideapp/view/screens/phone_verification.dart';
import '../../models/phone_no_login.dart';

final phoneno = TextEditingController();


class phoneotp extends StatefulWidget {
  phoneotp({required this.Phonenumber});
  String Phonenumber;

  @override
  State<phoneotp> createState() => _phoneotpState();
}

class _phoneotpState extends State<phoneotp> {
  //  TextEditingController countrycontroller = TextEditingController();
  //  TextEditingController phonenoController =TextEditingController();
  @override
  // void dispose() {
  //   otp.dispose();
  //   super.dispose();
  // }

  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
          fontSize: 20, color: Colors.black54, fontWeight: FontWeight.w600),
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
        leading: const BackButton(
          color: Colors.black54,
        ),
      ),
      body: GestureDetector(
        onTap:(){
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //
      
                const Text(
                  "Enter the code",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
      
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  const Text(
                    "sent to +91",
                    style: TextStyle(color: Colors.black),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(
                    widget.Phonenumber,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  )
                ]),
      
                const SizedBox(height: 50),
      
      // For pin input
      
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
                ),
      
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                        onPressed: () async {
                       
      
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => phonelogin()));
                        },
                        child: const Text("Edit Phone Number. ?",
                            style: TextStyle(color: Colors.black))),
                  ],
                ),
                const SizedBox(height: 25),
      
                button(
                  buttonText: "Nextt",
                  buttoncolor: Colors.black,
                  buttonheight: 55,
                  onTap: () async{
                    // print(widget.Phonenumber);
                      // await FirebaseAuthentication().sendOTP(widget.Phonenumber);
      //  await FirebaseFirestore.instance
      //               .collection("users").add({
      // "name":'abhishek',}).whenComplete(() {
                    Get.to(location_enable());
      // });
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final result ="";


class FirebaseAuthentication {
  String phoneno = "";
  
  sendOTP(String phoneno) async {
    this.phoneno = phoneno;
    FirebaseAuth auth = FirebaseAuth.instance;
    ConfirmationResult result = await auth.signInWithPhoneNumber(
      '+91$phoneno',
      
//  (phonelogin.result1=result as String) as RecaptchaVerifier?  
  );
    print("OTP Sent to +91 $result");
    Get.snackbar("OTP Sent to", "+91 $phoneno",snackPosition: SnackPosition.TOP, backgroundColor: Colors.white);
    return result;
    

  }
  

   authenticate(ConfirmationResult confirmationResult, String otp) async {
    print(confirmationResult);
    UserCredential userCredential = await confirmationResult.confirm(otp);
    userCredential.additionalUserInfo!.isNewUser
        ? Get.off(() =>  location_enable())
        : Get.snackbar("Error", "User already exists",snackPosition: SnackPosition.TOP , backgroundColor: Colors.white);
  }

  printMessage(String msg) {
    debugPrint(msg);
  }                        
}

        // ? printMessage("Authentication Successful")


//  Get.snackbar("Phone no", "Login Successful",snackPosition: SnackPosition.TOP , backgroundColor: Colors.white)
