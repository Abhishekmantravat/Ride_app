import 'package:flutter/material.dart';
import 'package:rideapp/res/constant/button.dart';
import 'package:rideapp/view/screens/homescreen.dart';
import 'package:get/get.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const BackButton(
          color: Colors.black,
        ),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Set up your Account",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const Text(
                  "Please introduce yourself  ",
                  style: TextStyle(color: Colors.black),
                ),
                const Text(
                  "Your name helps drivers identify you   ",
                  style: TextStyle(color: Colors.black),
                ),
                const SizedBox(
                  height: 40,
                ),
                const TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    hintText: "Full name",
                    labelText: "full Name",
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                  style: TextStyle(color: Colors.black),
                  // controller:  phonenoController,

                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    labelText: "Email (Option)",
                    hintText: "example@gmail.com",
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(height: screenHeight - 450),
                button(
                  buttonText: "Countinue",
                  buttoncolor: Colors.black,
                  buttonheight: 55,
                  onTap: () {
                    Get.to(homescreen());
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
