import 'package:flutter/material.dart';
import 'package:rideapp/view/driver/accountsetup/transporttypeitem.dart';
import 'package:url_launcher/url_launcher.dart';

class Request_history extends StatelessWidget {
  const Request_history({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Request History"),
        leading: BackButton(
          color: Colors.black,
        ),
        elevation: 2,
      ),
      body: Container(
                    padding: EdgeInsets.only(top:30, right: 20, left: 20 ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text("Date"),
                    Text("Location"),
                              Text("distination"),
          Text("INR390"),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
 Text("Cancel",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
           ],),
           SizedBox(height: 10),
Divider(),
           SizedBox(height: 10),

 Text("Date"),
                    Text("Location"),
                              Text("distination"),
          Text("INR390"),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
 Text("Successfull",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
           ],),
         
        ]),
      ),
    );
  }
}
