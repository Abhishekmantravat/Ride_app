// import 'dart:ui';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rideapp/res/constant/button.dart';
import 'package:rideapp/view/driver/accountsetup/transporttype.dart';
import 'package:rideapp/view/driver/accountsetup/transporttypeitem.dart';
import 'package:rideapp/view/screens/contact.dart';
import 'package:rideapp/view/dialogBox/dialog.dart';
import 'package:rideapp/view/screens/profile.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get/get.dart';
import '../../res/constant/hight.dart';

var height;
// bool isSwitched = false;

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  // bool isSwitched = false;

  void initState() {
    super.initState();
    loadSwitchValue();
  }

  Future<void> loadSwitchValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isSwitched = prefs.getBool('isSwitched') ?? false;
    });
  }

  @override
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGoogle = const CameraPosition(
    target: LatLng(21.125681, 82.794998),
    zoom: 1.4746,
  );

  var scaffoldKey = GlobalKey<ScaffoldState>();
  Widget build(BuildContext context) {
    final screenHeight = ScreenUtil.screenHeight(context);

    return isSwitched == true
        ?  transporttype()
        : Scaffold(
            key: scaffoldKey,
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
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ProfileScreen()));
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
                          Get.to(const contact());
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
                        onTap: () {},
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
            body: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: screenHeight / 2,
                      width: double.infinity,
                      color: Colors.grey,
                      child: GoogleMap(
                        // in the below line, setting camera position
                        initialCameraPosition: _kGoogle,
                        // in the below line, specifying map type.
                        mapType: MapType.normal,
                        // in the below line, setting user location enabled.
                        myLocationEnabled: true,
                        // in the below line, setting compass enabled.
                        compassEnabled: true,
                        // in the below line, specifying controller on map complete.
                        onMapCreated: (GoogleMapController controller) {
                          _controller.complete(controller);
                        },
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(left: 25, top: 15, right: 25),
                        child: DecoratedBox(
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.elliptical(20, 20))),
                          child: Column(
                            children: [
                              Container(
                                child: const Center(
                                    child: Text(
                                  "  Shair Ride ",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        splashColor: const Color.fromARGB(
                                            255, 141, 208, 239),
                                        onTap: () {
                                          showform(context);
                                        },
                                        child: SizedBox(
                                          height: 70,
                                          width: 130,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                              borderRadius: const BorderRadius.all(
                                                  Radius.circular(10)),
                                              border: Border.all(
                                                width: 3,
                                                color: Colors.green,
                                                style: BorderStyle.solid,
                                              ),
                                            ),
                                            child: Center(
                                                child: Image.asset(
                                              "assets/images/ride ac.png",
                                            )),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: const Color.fromARGB(
                                            255, 141, 208, 239),
                                        onTap: () {
                                          showform(context);
                                        },
                                        child: SizedBox(
                                            height: 70,
                                            width: 130,
                                            //                 splashColor: Colors.lightBlue,
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                borderRadius: const BorderRadius.all(
                                                    Radius.circular(10)),
                                                border: Border.all(
                                                  width: 3,
                                                  color: Colors.green,
                                                  style: BorderStyle.solid,
                                                ),
                                              ),
                                              child: Center(
                                                  child: Image.asset(
                                                      "assets/images/ride.png")),
                                            )),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          showform(context);
                                        },
                                        splashColor: const Color.fromARGB(
                                            255, 141, 208, 239),
                                        child: SizedBox(
                                            height: 70,
                                            width: 130,

                                            // color:Colors.grey,
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                borderRadius: const BorderRadius.all(
                                                    Radius.circular(10)),
                                                border: Border.all(
                                                  width: 3,
                                                  color: Colors.green,
                                                  style: BorderStyle.solid,
                                                ),
                                              ),
                                              child: Center(
                                                  child: Image.asset(
                                                      "assets/images/motar.png")),
                                            )),
                                      ),
                                      InkWell(
                                          splashColor: const Color.fromARGB(
                                              255, 141, 208, 239),
                                          onTap: () {
                                            showform(context);
                                          },
                                          child: SizedBox(
                                            height: 70,
                                            width: 130,
                                            child: DecoratedBox(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(10)),
                                                  border: Border.all(
                                                    width: 3,
                                                    color: Colors.green,
                                                    style: BorderStyle.solid,
                                                  ),
                                                ),
                                                child: const Center(
                                                  child: ImageIcon(
                                                    AssetImage(
                                                        "assets/images/lodar car.png"),
                                                    size: 250,
                                                  ),
                                                )),
                                          ))
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(height: 30),
                          

                              button(
                  buttonText: "Search",
                  buttoncolor: Colors.black,
                  buttonheight: 50,
                  onTap: () {
                                          showCustomDialog(context);
                  },
                )
                            ],
                          ),
                        ))
                  ],
                ),
                Positioned(
                  left: 15,
                  top: 40,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: Center(
                      child: IconButton(
                        icon: const Icon(Icons.menu),
                        onPressed: () => scaffoldKey.currentState?.openDrawer(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
