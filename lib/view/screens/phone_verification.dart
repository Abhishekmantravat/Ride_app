import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rideapp/res/constant/button.dart';
import 'package:rideapp/view/screens/phone_otp.dart';

final phoneno=TextEditingController();
final country =TextEditingController();
    var temp;

class phonelogin extends StatefulWidget {
  phonelogin({super.key});

  static String result1 = "";

  @override
  State<phonelogin> createState() => _phoneloginState();
}


class _phoneloginState extends State<phonelogin> {


  @override
  void dispose() {
    // controller.phoneno
// .dispose();
    // otpController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    country.text = "+91";
    super.initState();
  }

  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
     
      body: GestureDetector(
        onTap:(){
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                const Text(
                  "Enter Phone number for ",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const Text(
                  "verification ",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "This number will be used for all ride-related  ",
                  style: TextStyle(color: Colors.black),
                ),
                const Text(
                  "communication. You shall receive an SMS  ",
                  style: TextStyle(color: Colors.black),
                ),
                const Text(
                  "with code for verification. ",
                  style: TextStyle(color: Colors.black),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  height: 50,
                  decoration: const BoxDecoration(
                      border: BorderDirectional(
                          bottom: BorderSide(color: Colors.blue))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 30,
                        child: TextField(
                          style: const TextStyle(color: Colors.black),
                          // controller: countryController,
                          controller: country,
      
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const Text(
                        "|",
                        style: TextStyle(fontSize: 33, color: Colors.grey),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                          child: TextField(
                        style: const TextStyle(color: Colors.black),
                        controller: phoneno,
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Phone no",
                          hintStyle: TextStyle(color: Colors.black),
                        ),
                      ))
                    ],
                  ),
                ),
                SizedBox(height: screenHeight - 400),
              
                              button(buttonText: "Verify Phone Number",buttoncolor: Colors.black, buttonheight: 55,onTap:(){ Get.to(phoneotp(
                              Phonenumber: phoneno.text.trim(),
                            ));} ,)
      
              ],
            ),
          ),
        ),
      ),
    );
  }
}
