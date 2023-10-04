import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rideapp/res/constant/hight.dart';
import 'package:rideapp/view/driver/accountsetup/registration/registration.dart';
import 'package:rideapp/view/driver/accountsetup/transporttypeitem.dart';
import 'package:rideapp/view/screens/homescreen.dart';

class transporttype extends StatefulWidget {
  const transporttype({super.key});

  @override
  State<transporttype> createState() => _transporttypeState();
}


class _transporttypeState extends State<transporttype> {
  @override
  Widget build(BuildContext context) {
    return isSwitched == false
        ? const homescreen()
        : Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: BackButton(
                  color: Colors.black,
                  onPressed: ()  {
                    setState(() {
                      isSwitched = false;
                      saveSwitchValue(isSwitched);
                    });
                  }),
            ),
            backgroundColor: Colors.white,
            body: Container(
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                              icon: Icons.car_crash,
                              buttonText: 'AC Car',
                              onTap: () {
                                Get.to(const driver_registration());
                              },
                            ),
                            const Divider(),
                            transporttypeitem(
                              icon: Icons.car_crash,
                              buttonText: 'Car',
                              onTap: () {
                                Get.to(const driver_registration());
                              },
                            ),
                            const Divider(),
                            transporttypeitem(
                              icon: Icons.car_crash,
                              buttonText: 'Moto',
                              onTap: () {
                                Get.to(const driver_registration());
                              },
                            ),
                            const Divider(),
                            transporttypeitem(
                              icon: Icons.car_crash,
                              buttonText: 'Loder / Courier',
                              onTap: () {
                                Get.to(const driver_registration());
                              },
                            ),
                            const SizedBox(height: 10)
                          ],
                        ),
                      ),
                    ),
                  ],
                )));
  }
}
