// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:get/get.dart';
// import 'package:rideapp/view/screens/loction_enable.dart';



// final result ="";


// class FirebaseAuthentication {
//   String phoneno = "";
  
//   sendOTP(String phoneno) async {
//     this.phoneno = phoneno;
//     FirebaseAuth auth = FirebaseAuth.instance;
//     ConfirmationResult result = await auth.signInWithPhoneNumber(
//       '+91$phoneno',
      
// //  (phonelogin.result1=result as String) as RecaptchaVerifier?  
//   );
//     print("OTP Sent to +91 $result");
//     Get.snackbar("OTP Sent to", "+91 $phoneno",snackPosition: SnackPosition.TOP, backgroundColor: Colors.white);
//     return result;
    

//   }
  

//    authenticate(ConfirmationResult confirmationResult, String otp) async {
//     print(confirmationResult);
//     UserCredential userCredential = await confirmationResult.confirm(otp);
//     userCredential.additionalUserInfo!.isNewUser
//         ? Get.off(() => const location_enable())
//         : Get.snackbar("Error", "User already exists",snackPosition: SnackPosition.TOP , backgroundColor: Colors.white);
//   }

//   printMessage(String msg) {
//     debugPrint(msg);
//   }                        
// }

//         // ? printMessage("Authentication Successful")


// //  Get.snackbar("Phone no", "Login Successful",snackPosition: SnackPosition.TOP , backgroundColor: Colors.white)
