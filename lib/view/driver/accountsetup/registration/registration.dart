import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rideapp/res/constant/button.dart';
import 'package:rideapp/view/driver/accountsetup/registration/aadhaar_card.dart';
import 'package:rideapp/view/driver/accountsetup/registration/basic_info.dart';
import 'package:rideapp/view/driver/accountsetup/registration/driving_license.dart';
import 'package:rideapp/view/driver/accountsetup/registration/vechicle_info.dart';
import 'package:rideapp/view/driver/accountsetup/transporttypeitem.dart';
import 'package:rideapp/view/driver/driverhome_page.dart';

class driver_registration extends StatefulWidget {
  const driver_registration({super.key});

  @override
  State<driver_registration> createState() => _driver_registrationState();
}

class _driver_registrationState extends State<driver_registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const BackButton(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        body: Container(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade500,
                            offset: const Offset(4.0, 4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0),
                        const BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4.0, -4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0),
                      ],
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          color: const Color.fromARGB(255, 245, 242, 242)),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        transporttypeitem(
                          icon: Icons.info,
                          buttonText: 'Basic Info',
                          onTap: () {
                            Get.to(basic_info());
                          },
                        ),
                        const Divider(),
                        transporttypeitem(
                          icon: Icons.card_membership,
                          buttonText: 'Driving License',
                          onTap: () {
                            Get.to(driving_license());
                          },
                        ),
                        const Divider(),
                        transporttypeitem(
                          icon: Icons.policy_rounded,
                          buttonText: 'Aadhaar Card',
                          onTap: () {
                            Get.to(aadhaar_info());
                          },
                        ),
                        const Divider(),
                        transporttypeitem(
                          icon: Icons.details,
                          buttonText: 'Vehicle Info',
                          onTap: () {
                            Get.to(const vechicle_info());
                          },
                        ),
                        const Divider(),
                        transporttypeitem(
                          icon: Icons.code,
                          buttonText: 'Referral Code',
                          onTap: () {},
                        ),
                        const Divider(),
                        transporttypeitem(
                          icon: Icons.local_police,
                          buttonText: 'Police Verification Certificate',
                          onTap: () {},
                        ),
                        const SizedBox(height: 10)
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                button(
                  buttonText: "Done",
                  buttonheight: 55,
                  buttoncolor: Colors.black,
                  onTap: () {
                    Get.to(driverhome_page());
                  },
                )
              ],
            )));
  }
}
