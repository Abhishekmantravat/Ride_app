import 'package:flutter/Material.dart';
import 'package:get/get.dart';
import 'package:rideapp/view/screens/contact.dart';
import 'package:rideapp/view/screens/homescreen.dart';
import 'package:rideapp/view/screens/profile.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:rideapp/res/constant/hight.dart';
import '../dialogBox/driverequestdialog.dart';
import '../dialogBox/driverequestdialog.dart';

class driverhome_page extends StatefulWidget {
  const driverhome_page({super.key});

  @override
  State<driverhome_page> createState() => _driverhome_pageState();
}

class _driverhome_pageState extends State<driverhome_page> {
  Widget build(BuildContext context) {
    return isSwitched == false
        ? const homescreen()
        : Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
            ),
            drawer: Drawer(
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      DrawerHeader(
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1)),
                        child: UserAccountsDrawerHeader(
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255)),
                          accountName: const Text(
                            "Abhishek Mishra",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          accountEmail: const Text("6386444795",
                              style: TextStyle(color: Colors.black)),
                          currentAccountPictureSize: const Size.square(50),

                          currentAccountPicture: CircleAvatar(
                              child: TextButton(
                                  onPressed: () {
                                    Get.to(ProfileScreen());
                                  },
                                  child: Image.asset(
                                    "assets/images/ride ac.png",
                                    fit: BoxFit.fill,
                                  ))),
                          
                        ), //UserAccountDrawerHeader
                      ), //DrawerHeader

                      const SizedBox(height: 10),
                      ListTile(
                        textColor: const Color.fromARGB(255, 0, 0, 0),
                        iconColor: const Color.fromARGB(255, 0, 0, 0),
                        leading: const Icon(
                          Icons.car_rental,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        title: const Text(
                          ' Driver mode ',
                          style: TextStyle(),
                        ),
                        trailing: Switch(
                          value: isSwitched,
                          // value: true,
                          activeColor: Colors.blue,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                              saveSwitchValue(isSwitched);
                            });
                          },
                        ),
                     
                      ),
                      const SizedBox(
                        height: 7,
                      ),

                      ListTile(
                        textColor: const Color.fromARGB(255, 0, 0, 0),
                        iconColor: const Color.fromARGB(255, 0, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        leading: const Icon(Icons.timer),
                        title: const Text(' Request contact '),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const contact()));
                        },
                      ),

                      const SizedBox(
                        height: 7,
                      ),
                      ListTile(
                        textColor: const Color.fromARGB(255, 0, 0, 0),
                        iconColor: const Color.fromARGB(255, 0, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        leading: const Icon(Icons.group_add),
                        title: const Text(' Outstation '),
                        onTap: () {
                          var whatsappUrl = "whatsapp://send?phone=91+7651872097" +
                              "&text=${Uri.encodeComponent("_messageController")}";
                          try {
                            launch(whatsappUrl);
                          } catch (e) {
                            //To handle error and display error message
                            print("not open");
                          }
                        },
                      ),

                      const SizedBox(
                        height: 7,
                      ),

                      ListTile(
                        textColor: const Color.fromARGB(255, 0, 0, 0),
                        iconColor: const Color.fromARGB(255, 0, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        leading: const Icon(Icons.group_add),
                        title: const Text(' Safety '),
                        onTap: () {},
                      ),

                      const SizedBox(
                        height: 7,
                      ),

                      ListTile(
                        textColor: const Color.fromARGB(255, 0, 0, 0),
                        iconColor: const Color.fromARGB(255, 0, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        leading: const Icon(Icons.group_add),
                        title: const Text(' Setting '),
                        onTap: () {},
                      ),

                      const SizedBox(
                        height: 7,
                      ),
                      ListTile(
                        textColor: const Color.fromARGB(255, 0, 0, 0),
                        iconColor: const Color.fromARGB(255, 0, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        leading: const Icon(Icons.support_agent),
                        title: const Text("Support"),
                        onTap: () {
                        
                        },
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      ListTile(
                        textColor: const Color.fromARGB(255, 0, 0, 0),
                        iconColor: const Color.fromARGB(255, 0, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        leading: const Icon(Icons.share_sharp),
                        title: const Text(' Share '),
                        onTap: () {},
                      ),

                      const SizedBox(
                        height: 7,
                      ),
                      ListTile(
                        textColor: const Color.fromARGB(255, 0, 0, 0),
                        iconColor: const Color.fromARGB(255, 0, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        leading: const Icon(Icons.logout_sharp),
                        title: const Text(' Logout '),
                        onTap: () {
                        },
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Center(
                        child: Text("version 2.3.1"),
                      )
                    ],
                  ),
                )),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () async {
                      Requestride(context);
                    },
                    child: AnimatedContainer(
                      height: 150,
                      width: 150,
                      duration: const Duration(microseconds: 250),
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade500,
                                    offset: const Offset(6.0, 6.0),
                                    blurRadius: 15.0,
                                    spreadRadius: 1.0),
                                BoxShadow(
                                    color: Colors.grey.shade500,
                                    offset: const Offset(-6.0, -6.0),
                                    blurRadius: 15.0,
                                    spreadRadius: 1.0),
                              ],
                              color: Colors.black,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(200)),
                              border: Border.all(color: Colors.grey.shade300)),
                          child: const Icon(
                            Icons.find_replace,
                            size: 80,
                            color: Colors.white,
                            shadows: [
                              Shadow(color: Colors.grey),
                              Shadow(blurRadius: 50)
                            ],
                          )),
                    ),
                  )
                ],
              ),
            ),
          );
  }
}

