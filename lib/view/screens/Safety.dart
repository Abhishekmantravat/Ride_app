import 'package:flutter/material.dart';
import 'package:rideapp/view/driver/accountsetup/transporttypeitem.dart';
import 'package:url_launcher/url_launcher.dart';

class saftey extends StatelessWidget {
  const saftey({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Safety"),
        leading: BackButton(
          color: Colors.black,
        ),
        elevation: 2,
      ),
      body: Container(
        child: Column(children: [
          Container(
            padding: EdgeInsets.only(top:70, right: 20, left: 20 ),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        "assets/images/ride ac.png",
                        fit: BoxFit.cover,
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Who do you want to",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("contact?",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))],
                ),
                SizedBox(
                  height: 25,
                ),
                transporttypeitem(
                    buttonText: "Ambulance", icon: Icons.call, onTap: () {                        launch('tel:  112');
}),


 SizedBox(
                  height: 15,
                ),
                      transporttypeitem(
                    buttonText: "Police", icon: Icons.call, onTap: () {                        launch('tel:  100');
}),
 SizedBox(
                  height: 15,
                ),
                      transporttypeitem(
                    buttonText: "Message Support", icon: Icons.message, onTap: () {}),
 SizedBox(
                  height: 15,
                ),
                      transporttypeitem(
                    buttonText: "Safety Trips", icon: Icons.safety_check, onTap: () {}),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
