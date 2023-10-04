import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:rideapp/res/constant/button.dart';
import 'package:rideapp/view/screens/register.dart';
import 'package:get/get.dart';


class location_enable extends StatefulWidget {
   location_enable({super.key});

  @override
  State<location_enable> createState() => _location_enableState();
}

class _location_enableState extends State<location_enable> {
bool isLoading = false;

Future<Position> getUserCurrentLocation()async{
await Geolocator.requestPermission().then((value){
}).onError((error, stackTrace) {
print("error"+error.toString());

});

return await Geolocator.getCurrentPosition();
}

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


                SizedBox(
                                height: 55,
                                width: double.infinity,
                                child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color:Colors.black ,
                                        borderRadius: BorderRadius.circular(20)),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor:  Colors.black ,),
                                        onPressed: (){
                                          setState(() {
                      isLoading=true;
                    });
                    getUserCurrentLocation().then((value)async {
                      
                      print(value.latitude.toString()+" " + value.longitude.toString());

                    }).whenComplete((){
                       setState(() {
    isLoading=false;
  });
                      Get.to(register());
                    });
                                        },
                                        child:   isLoading ? CircularProgressIndicator( color: Colors.white,) :  Text(
                                          "Allow",
                                          style: const TextStyle(
                                              fontSize: 20,
                                              color: Colors.white),
                                        ),
                                        
                                        )),
                              ),
                
              ],
            ),
          ),
        ));
  }
}
