import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rideapp/res/constant/button.dart';
import 'package:rideapp/view/driver/ridesearching.dart';

void Requestride(BuildContext context) {
  double screenHeight = MediaQuery.of(context).size.height;

  showModalBottomSheet(
    context: context,
    elevation: 2,
    isScrollControlled: true,
    // backgroundColor: Colors.black,
    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
    builder: (BuildContext context) => Container(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.55,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                    width: 80,
                    child: Divider(
                      color: Colors.grey,
                      height: 30,
                      thickness: 3,
                      indent: 5,
                      endIndent: 5,
                    )),
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextFormField(
                        onChanged: (value) {
                          // setState(() {
                          //   // description = value;
                          // });
                        },
                        style: const TextStyle(color: Colors.grey),
                        decoration: const InputDecoration(
                          labelText: "Your location",
                          labelStyle: TextStyle(color: Colors.grey),
                        ),
                        autofocus: true,
                      ),
                      TextFormField(
                        onChanged: (value) {
                          // setState(() {
                          //   // description = value;
                          // });
                        },
                        style: const TextStyle(color: Colors.grey),
                        decoration: const InputDecoration(
                          labelText: "Destination",
                          labelStyle: TextStyle(color: Colors.grey),
                        ),
                        autofocus: true,
                      ),
                      TextFormField(
                        onChanged: (value) {
                          // setState(() {
                          //   // description = value;
                          // });
                        },
                        style: const TextStyle(color: Colors.grey),
                        decoration: const InputDecoration(
                          labelText: "Seats Avaliable",
                          labelStyle: TextStyle(color: Colors.grey),
                        ),
                        autofocus: true,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Flexible(
                            child: Padding(
                              padding: EdgeInsets.all(0.0),
                              child: TextField(
                                decoration:
                                    InputDecoration(labelText: 'Starting Time'),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                decoration:
                                    InputDecoration(labelText: 'Reaching Time'),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                     
                      

                       button(
                  buttonText: "Search",
                  buttoncolor: Colors.black,
                  buttonheight: 50,
                  onTap: () {
                    Get.to(drivesearch());
                  },
                )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
