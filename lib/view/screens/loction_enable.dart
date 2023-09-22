import 'package:flutter/material.dart';
import 'package:rideapp/res/constant/button.dart';
import 'package:rideapp/view/screens/register.dart';
import 'package:get/get.dart';

class location_enable extends StatelessWidget {
  const location_enable({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(
              left: 25,
              right: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 400,
                  width: double.infinity,
                  color: Colors.grey,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Turn your location on",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    )
                  ],
                ),
                const Text("you can't create orders and find drivers",
                    style: TextStyle(
                      color: Colors.black,
                    )),
                const Text("unless we have your location info. please",
                    style: TextStyle(
                      color: Colors.black,
                    )),
                const Text("open your phone settings and allow the ",
                    style: TextStyle(
                      color: Colors.black,
                    )),
                const Text("app to access your location",
                    style: TextStyle(
                      color: Colors.black,
                    )),
                SizedBox(height: 50),

                // for  button
                button(
                  buttonText: "ALLOW",
                  buttoncolor: Colors.black,
                  buttonheight: 50,
                  onTap: () {
                    Get.to(register());
                  },
                )
              ],
            ),
          ),
        ));
  }
}
