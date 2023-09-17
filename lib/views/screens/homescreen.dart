import 'dart:async';
// import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rideapp/views/profile.dart';
import 'package:rideapp/views/screens/carview.dart';
import 'package:rideapp/views/screens/contact.dart';
import 'package:rideapp/views/screens/profile.dart';
import 'package:url_launcher/url_launcher.dart';


class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  bool isSwitched = false;
  Completer<GoogleMapController> _controller = Completer();

  // in the below line, we are specifying our camera position
  static final CameraPosition _kGoogle = const CameraPosition(
    target: LatLng(21.125681, 82.794998),
    zoom: 1.4746,
  );
  var height;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    height = screenHeight;

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0.2,
          backgroundColor: Colors.white,
          leading: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Builder(
                builder: (BuildContext context) {
                  return CircleAvatar(
                      // maxRadius: 30,
                      backgroundColor: Colors.white,
                      child: Container(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                          margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                          // height: 110,
                          // width: 110,
                          child: IconButton(
                              onPressed: () {
                                Scaffold.of(context).openDrawer();
                              },
                              //  tooltip: "Show profile",
                              icon: Icon(Icons.line_weight))));
                },
              ),
            ],
          ),
          flexibleSpace: SafeArea(
              child: Container(
            // height: screenHeight/2,

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
          )),
          toolbarHeight: screenHeight / 2,
        ),
        drawer: Drawer(
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
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
                      accountEmail: Text("6386444795",
                          style: TextStyle(color: Colors.black)),
                      currentAccountPictureSize: const Size.square(50),

                      currentAccountPicture: CircleAvatar(
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ProfileScreen()));
                              },
                              child: Image.asset("assets/images/ride ac.png",
                                                            fit: BoxFit.fill,
))),
                      //circleAvatar
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
                        print("VALUE : $value");
                        setState(() {
                          isSwitched = value;
                        });
                      },
                    ),
                    onTap: () {
                      // // go to profile screen
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => car()));
                    },
                  ),
                  SizedBox(
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => contact()));
                    },
                  ),

                  SizedBox(
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

                      var whatsappUrl =
          "whatsapp://send?phone=91+7651872097"+
              "&text=${Uri.encodeComponent("_messageController")}";
      try {
        launch(whatsappUrl);
      } catch (e) {
        //To handle error and display error message
        print("not open");
                     } },
                  ),

                  SizedBox(
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

                  SizedBox(
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

                  SizedBox(
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
                      //   AuthenticationRepository.instance
                      // .logout()
                      // .then((value) => Get.to(chatlogin()));
                    },
                  ),
                  SizedBox(
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

                  SizedBox(
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
                  SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: Text("version 2.3.1"),
                  )
                ],
              ),
            )),
        body:
        
    //     if(condition == true){
    //   new Container();
    // }else{
    
    
        
        
         SingleChildScrollView(
          
          child: isSwitched == true ?  Center(child:Text("driver mode")) :  
          Column(
            children: [
              Container(
                  padding: EdgeInsets.only(left: 25, top: 15, right: 25),
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
                                fontSize: 30, fontWeight: FontWeight.bold),
                          )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  splashColor:
                                      const Color.fromARGB(255, 141, 208, 239),
                                  onTap: () {
                                    _showModal();
                                  },
                                  child: SizedBox(
                                    height: 70,
                                    width: 130,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
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
                                  splashColor:
                                      const Color.fromARGB(255, 141, 208, 239),
                                  onTap: () {
                                    _showModal();
                                  },
                                  child: SizedBox(
                                      height: 70,
                                      width: 130,
                                      //                 splashColor: Colors.lightBlue,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
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
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    _showModal();
                                  },
                                  splashColor:
                                      const Color.fromARGB(255, 141, 208, 239),
                                  child: SizedBox(
                                      height: 70,
                                      width: 130,

                                      // color:Colors.grey,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
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
                                      _showModal();
                                    },
                                    child: SizedBox(
                                      height: 70,
                                      width: 130,
                                      child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            border: Border.all(
                                              width: 3,
                                              color: Colors.green,
                                              style: BorderStyle.solid,
                                            ),
                                          ),
                                          child: Center(
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
                        SizedBox(height: 30),
                        SizedBox(
                          height: 45,
                          width: double.infinity,
                          child: DecoratedBox(
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5)),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black),
                                  onPressed: () async {
                                    _showfrom(context, null);
                                  },
                                  child: Text(
                                    "Search",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ))),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ));
  }

  void _showfrom(BuildContext ctx, int? itemKey) async {
    showModalBottomSheet(
        context: context,
        elevation: 2,
        isScrollControlled: true,
        // backgroundColor: Colors.black,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        builder: (BuildContext context) => Container(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: SizedBox(
                height: height / 2,
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
                          padding:
                              EdgeInsets.only(left: 10, right: 10, top: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              TextFormField(
                                onChanged: (value) {
                                  setState(() {
                                    // description = value;
                                  });
                                },
                                style: TextStyle(color: Colors.grey),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2, color: Colors.grey)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.grey)),
                                  labelText: "Your location",
                                  labelStyle: TextStyle(color: Colors.grey),
                                ),
                                autofocus: true,
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                onChanged: (value) {
                                  setState(() {
                                    // description = value;
                                  });
                                },
                                style: TextStyle(color: Colors.grey),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2, color: Colors.grey)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.grey)),
                                  labelText: "Destination",
                                  labelStyle: TextStyle(color: Colors.grey),
                                ),
                                autofocus: true,
                              ),
                              SizedBox(height: 10),
                              DropdownButtonFormField<String>(
                                // value: selectedType,
                                items: <String>[
                                  'Expense',
                                  'Income'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    // selectedType = newValue!;
                                  });
                                },
                                style: TextStyle(color: Colors.grey),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2, color: Colors.grey)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.grey)),
                                  labelText: "category",
                                  labelStyle: TextStyle(color: Colors.grey),
                                ),
                              ),
                              SizedBox(height: 40),
                              SizedBox(
                                height: 50,
                                width: double.infinity,
                                child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.black),
                                        onPressed: () async {
                                          // _showfrom(context, null);
                                        },
                                        child: Text(
                                          "Search",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white),
                                        ))),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ));
  }

  void _showModal() {
    showModalBottomSheet<void>(
      isScrollControlled: true,

      // context and builder are
      // required properties in this widget
      context: context,
      builder: (BuildContext context) {
        // we set up a container inside which
        // we create center column and display text

        // Returning SizedBox instead of a Container
        return Container(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: SizedBox(
            height: height / 2,
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                        width: 80,
                        child: Divider(
                          color: Colors.grey,
                          height: 30,
                          thickness: 3,
                          indent: 5,
                          endIndent: 5,
                        )),
                    Container(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TextFormField(
                            onChanged: (value) {
                              setState(() {
                                // description = value;
                              });
                            },
                            style: TextStyle(color: Colors.grey),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 2, color: Colors.grey)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.grey)),
                              labelText: "Your location",
                              labelStyle: TextStyle(color: Colors.grey),
                            ),
                            autofocus: true,
                          ),
                          SizedBox(height: 16),
                          TextFormField(
                            onChanged: (value) {
                              setState(() {
                                // description = value;
                              });
                            },
                            style: TextStyle(color: Colors.grey),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 2, color: Colors.grey)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.grey)),
                              labelText: "Destination",
                              labelStyle: TextStyle(color: Colors.grey),
                            ),
                            autofocus: true,
                          ),
                          SizedBox(height: 80),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(5)),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.black),
                                    onPressed: () async {
                                      // _showfrom(context, null);
                                      showtransport();
                                    },
                                    child: Text(
                                      "Search",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    ))),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void showtransport() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height * 0.75,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: SizedBox(
                    width: 80,
                    child: Divider(
                      color: Colors.grey,
                      height: 30,
                      thickness: 3,
                      indent: 5,
                      endIndent: 5,
                    )),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0),
                      ),
                      // border: Border.all(color: Colors.grey)
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 80,
                          width: 60,
                          //  padding: EdgeInsets.all(20),
                          child: Center(
                            child: Column(
                              children: [
                                SizedBox(height: 6),
                                Container(
                                    height: 10,
                                    width: 10,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.green,
                                    )),
                                SizedBox(height: 3),
                                SizedBox(
                                  height: 25,
                                  child: VerticalDivider(
                                    color: Colors.grey,
                                    thickness: 2,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Container(
                                    height: 10,
                                    width: 10,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.red,
                                    ))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Container(
                          // padding: const EdgeInsets.only(top: 20),
                          child: Center(
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "your location ",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Divider(height: 19),
                                Text(
                                  "your dictination",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 6),
              Divider(),
              Container(
                  padding:
                      EdgeInsets.only(bottom: 20, left: 10, right: 10, top: 10),
                  child: Column(children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      SizedBox(width: 6),
                      Text(
                        "Recommended for you ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ]),
                    SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        Driverdetail();
                      },
                      child: SizedBox(
                        height: 80,
                        width: double.infinity,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade500,
                  offset: Offset(1.0, 1.0),
                  blurRadius: 5.0,
                  spreadRadius: 0.5),
              const BoxShadow(
                  color: Colors.white,
                  offset: Offset(-2.0, -2.0),
                  blurRadius: 5.0,
                  spreadRadius: 1.0),
            ],
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: const Color.fromARGB(255, 246, 243, 243))),
                          child: Row(
                            children: [
                              const SizedBox(
                                height: 80,
                                width: 80,
                                // padding: EdgeInsets.all(20),
                                child: Center(
                                  child: Column(
                                    children: [
                                      SizedBox(height: 12),

                                      Stack(
                                        children: [
                                          Image(
                                            image: AssetImage(
                                              "assets/images/ride ac.png",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                          Positioned(
                                            bottom: -5,
                                            left: 24,
                                            child: Text(
                                              '6 min',
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                      // ImageIcon(
                                      //     AssetImage("assets/images/lodar car.png",),
                                      //     size:40),
                                      // IconButton.filled(onPressed: (){}, icon: ImageIcon(
                                      //     AssetImage("assets/images/lodar car.png",),
                                      //     size:40),),
                                      // Text("6 min",style:TextStyle(fontSize: 10))
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.only(top: 20),
                                child: Center(
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "pushkar d ",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "February 24,2022",
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                  child: Container(
                                padding: const EdgeInsets.only(right: 30),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.currency_rupee,
                                      size: 15,
                                    ),
                                    Text(
                                      "240.00",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ))
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(
                              height: 80,
                              width: 80,
                              // padding: EdgeInsets.all(20),
                              child: Center(
                                child: Column(
                                  children: [
                                    SizedBox(height: 4),
                                    Stack(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                            "assets/images/ride ac.png",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        Positioned(
                                          bottom: -5,
                                          left: 24,
                                          child: Text(
                                            '6 min',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 10),
                              child: const Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "pushkar d ",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "February 24,2022",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                                child: Container(
                              padding: const EdgeInsets.only(right: 30),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.currency_rupee,
                                    size: 15,
                                  ),
                                  Text(
                                    "240.00",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(
                              height: 80,
                              width: 80,
                              child: Center(
                                child: Column(
                                  children: [
                                    SizedBox(height: 4),
                                    Stack(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                            "assets/images/ride ac.png",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        Positioned(
                                          bottom: -5,
                                          left: 24,
                                          child: Text(
                                            '6 min',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 10),
                              child: Center(
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "pushkar d ",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "February 24,2022",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                                child: Container(
                              padding: const EdgeInsets.only(right: 30),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.currency_rupee,
                                    size: 15,
                                  ),
                                  Text(
                                    "240.00",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      SizedBox(width: 8),
                      Text(
                        "More available ride",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ]),
                    SizedBox(height: 12),
                    SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(
                              height: 80,
                              width: 80,
                              // padding: EdgeInsets.all(20),
                              child: Center(
                                child: Column(
                                  children: [
                                    SizedBox(height: 4),
                                    Stack(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                            "assets/images/ride ac.png",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        Positioned(
                                          bottom: -5,
                                          left: 24,
                                          child: Text(
                                            '6 min',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 10),
                              child: const Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "pushkar d ",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "February 24,2022",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                                child: Container(
                              padding: const EdgeInsets.only(right: 30),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.currency_rupee,
                                    size: 15,
                                  ),
                                  Text(
                                    "240.00",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(
                              height: 80,
                              width: 80,
                              // padding: EdgeInsets.all(20),
                              child: Center(
                                child: Column(
                                  children: [
                                    SizedBox(height: 4),
                                    Stack(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                            "assets/images/ride ac.png",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        Positioned(
                                          bottom: -5,
                                          left: 24,
                                          child: Text(
                                            '6 min',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 10),
                              child: const Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "pushkar d ",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "February 24,2022",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                                child: Container(
                              padding: const EdgeInsets.only(right: 30),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.currency_rupee,
                                    size: 15,
                                  ),
                                  Text(
                                    "240.00",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(
                              height: 80,
                              width: 80,
                              // padding: EdgeInsets.all(20),
                              child: Center(
                                child: Column(
                                  children: [
                                    SizedBox(height: 4),
                                    Stack(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                            "assets/images/ride ac.png",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        Positioned(
                                          bottom: -5,
                                          left: 24,
                                          child: Text(
                                            '6 min',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 10),
                              child: const Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "pushkar d ",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "February 24,2022",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                                child: Container(
                              padding: const EdgeInsets.only(right: 30),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.currency_rupee,
                                    size: 15,
                                  ),
                                  Text(
                                    "240.00",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ))
                          ],
                        ),
                      ),
                    ),
                  ])),
            ],
          ),
        ),
      ),
    );
  }

  void Driverdetail() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height * 0.75,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: SizedBox(
                    width: 80,
                    child: Divider(
                      color: Colors.grey,
                      height: 30,
                      thickness: 3,
                      indent: 5,
                      endIndent: 5,
                    )),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0),
                      ),
                      // border: Border.all(color: Colors.grey)
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 80,
                          width: 60,
                          //  padding: EdgeInsets.all(20),
                          child: Center(
                            child: Column(
                              children: [
                                SizedBox(height: 6),
                                Container(
                                    height: 10,
                                    width: 10,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.green,
                                    )),
                                SizedBox(height: 3),
                                SizedBox(
                                  height: 25,
                                  child: VerticalDivider(
                                    color: Colors.grey,
                                    thickness: 2,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Container(
                                    height: 10,
                                    width: 10,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.red,
                                    ))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Container(
                          // padding: const EdgeInsets.only(top: 20),
                          child: Center(
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "your location ",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Divider(height: 19),
                                Text(
                                  "your dictination",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 6),
              Divider(),
              Container(
                  padding:
                      EdgeInsets.only(bottom: 20, left: 10, right: 10, top: 10),
                  child: Column(children: [
                    SizedBox(
                      height: 80,
                      width: double.infinity,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          //  border: Border.all(color: Colors.grey)
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 10),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Transport type",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "Toyota Corolla",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 4),

                                    //  TextButton(onPressed: (){}, child: Text("View details")),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                                child: Container(
                              padding: const EdgeInsets.only(right: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      child: CircleAvatar(
                                    maxRadius: 30,
                                    backgroundColor: const Color.fromARGB(
                                        255, 239, 237, 237),
                                    backgroundImage: AssetImage(
                                        "assets/images/lodar car.png"),
                                    //  ImageIcon(
                                    //                                 AssetImage(
                                    //                                     "assets/images/lodar car.png"),
                                    //                                 size: 150,
                                    //                               ),
                                  )),
                                ],
                              ),
                            ))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      width: double.infinity,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.grey)),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 13),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Total fare",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      "Includes taxes",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 4),

                                    InkWell(
                                        onTap: () {},
                                        child: Text(
                                          "View details",
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 94, 151, 250),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                    //  TextButton(onPressed: (){}, child: Text("View details")),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                                child: Container(
                              padding: const EdgeInsets.only(right: 30),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.currency_rupee,
                                    size: 15,
                                  ),
                                  Text(
                                    "240.00",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 100,
                      width: double.infinity,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.grey)),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 13),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.person_3_outlined),
                                            SizedBox(width: 10),
                                            Text(
                                              "Available",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(width: 25),
                                            Container(
                                                height: 4,
                                                width: 4,
                                                child: CircleAvatar(
                                                  backgroundColor: Colors.grey,
                                                )),
                                            SizedBox(width: 10),
                                            Text(
                                              "4 seats",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Icon(Icons.time_to_leave),
                                        SizedBox(width: 10),
                                        Text(
                                          "Arrives in 2 mins",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 4),

                                    Row(
                                      children: [
                                        Icon(Icons.star),
                                        SizedBox(width: 10),
                                        Text(
                                          "4.75",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    //  TextButton(onPressed: (){}, child: Text("View details")),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 45,
                      width: double.infinity,
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(5)),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black),
                              onPressed: () async {
                                rideconfirm();
                              },
                              child: Text(
                                "Start Trip",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ))),
                    ),
                  ])),
            ],
          ),
        ),
      ),
    );
  }

  void rideconfirm() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height * 0.75,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 4),
              Center(
                child: SizedBox(
                    child: Text(
                  "Your ride is confirmed",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
              SizedBox(height: 8),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0),
                      ),
                      // border: Border.all(color: Colors.grey)
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 80,
                          width: 60,
                          //  padding: EdgeInsets.all(20),
                          child: Center(
                            child: Column(
                              children: [
                                SizedBox(height: 6),
                                Container(
                                    height: 10,
                                    width: 10,
                                    child: CircleAvatar(
                                      backgroundColor:
                                          const Color.fromARGB(255, 1, 111, 5),
                                    )),
                                SizedBox(height: 3),
                                SizedBox(
                                  height: 25,
                                  child: VerticalDivider(
                                    color: Colors.lightGreen[200],
                                    thickness: 1,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Container(
                                    height: 10,
                                    width: 10,
                                    child: CircleAvatar(
                                      backgroundColor:
                                          const Color.fromARGB(255, 161, 18, 8),
                                    ))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Container(
                          // padding: const EdgeInsets.only(top: 20),
                          child: Center(
                            child:  Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "your location ",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Divider(height: 19),
                                Text(
                                  "your dictination",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 6),
              Divider(),
              Container(
                  padding:
                      EdgeInsets.only(bottom: 20, left: 10, right: 10, top: 10),
                  child: Column(children: [
                    SizedBox(
                      height: 190,
                      width: double.infinity,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,

                            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade500,
                  offset: Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
              const BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
            ],
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: const Color.fromARGB(255, 245, 242, 242))

 
          


                            ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 10),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "UP32MN3088",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      "White Dzire Tour Taxi",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 8),

                                    const Row(
                                      children: [
                                        Text(
                                          "Shiv Kumar Shingh",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Icon(
                                          Icons.star,
                                          color: Color.fromARGB(
                                              255, 255, 216, 59),
                                        ),
                                        Text("5.0")
                                      ],
                                    ),
                                    SizedBox(height: 20),

                                    //  TextButton(onPressed: (){}, child: Text("View details")),

                                    SizedBox(
                                      height: 45,
                                      // width: double.infinity,
                                      child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.black),
                                              onPressed: () async {
                                                _showfrom(context, null);
                                              },
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.call,
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255),
                                                  ),
                                                  Text(
                                                    " Call Driver",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ))),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                                child: Container(
                              padding: const EdgeInsets.only(right: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                //  crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      child: CircleAvatar(
                                    maxRadius: 30,
                                    backgroundColor: const Color.fromARGB(
                                        255, 239, 237, 237),
                                    backgroundImage: AssetImage(
                                        "assets/images/lodar car.png"),
                                    //  ImageIcon(
                                    //                                 AssetImage(
                                    //                                     "assets/images/lodar car.png"),
                                    //                                 size: 150,
                                    //                               ),
                                  )),
                                ],
                              ),
                            ))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 165,
                      width: double.infinity,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                             boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade500,
                  offset: Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
              const BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
            ],
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: const Color.fromARGB(255, 245, 242, 242))
                            ),
                        child: 
                            Container(
                              padding: const EdgeInsets.only(top: 13),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      
                                      children: [
                                           SizedBox(
                              width: 20,
                            ),
                                        Text(
                                          "Total fare ",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Icon(
                                          Icons.currency_rupee,
                                          color: Color.fromARGB(255, 0, 0, 0),
                                        ),
                                        Text(
                                          "454 ",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 4),
                                    Divider(
                                                                          thickness: 1,
                                    color: const Color.fromARGB(255, 241, 238, 238),

                                    ),
                                    SizedBox(height: 4),

                                    Row(
                                      children: [
                                           SizedBox(
                              width: 20,
                            ),
                                        Icon(
                                          Icons.payments,
                                          color:
                                              Color.fromARGB(255, 150, 255, 59),

                                        ),
                                        SizedBox(width:10),
                                        Text(
                                          "Cash",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
 SizedBox(width: 25),
                                            Container(
                                                height: 4,
                                                width: 4,
                                                child: CircleAvatar(
                                                  backgroundColor: Colors.grey,
                                                )),
                                            SizedBox(width: 10),
                                        const Text(
                                          "Pay when the ride ends",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
 SizedBox(height: 4),
                                    Divider(
                                                                          thickness: 1,
                                    color: const Color.fromARGB(255, 241, 238, 238),

                                    ),
                                    
                                     Row(
                                       children: [
                                           SizedBox(
                              width: 7,
                            ),
                                         Row(
                                           children: [
                                             ElevatedButton( style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white
                                             ),
                                              onPressed: (){}, child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                               children: [
                                                Icon(Icons.cancel,size:17, color: Colors.black,),
                                                 Text("Cancle",style:TextStyle(color:Colors.black)),
                                               ],
                                             )),  
                                             ElevatedButton( style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white
                                             ),
                                              onPressed: (){ var whatsappUrl =
          "whatsapp://send?phone=91+6386444795"+
              "&text=${Uri.encodeComponent("what is problem")}";
      try {
        launch(whatsappUrl);
      } catch (e) {
        //To handle error and display error message
        print("not open");
                     }}, child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                               children: [
                                                Icon(Icons.support_agent,size:17, color: Colors.black,),
                                                 Text("Support",style:TextStyle(color:Colors.black)),
                                               ],
                                             )),ElevatedButton( style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white
                                             ),
                                              onPressed: (){ var whatsappUrl =
          "whatsapp://send?phone=91+7651872097"+
              "&text=${Uri.encodeComponent("UP32MN3088 is a driver detail")}";
      try {
        launch(whatsappUrl);
      } catch (e) {
        //To handle error and display error message
        print("not open");
                     }}, child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                               children: [
                                                Icon(Icons.share,size:17, color: Colors.black,),
                                                 Text("Share",style:TextStyle(color:Colors.black)),
                                               ],
                                             )),
                                           ],
                                         ),
                                       ],
                                     ),
                                  ],
                                ),
                              ),
                            ),
                         
                      ),
                    ),
                    SizedBox(height: 20),

                      Row(
                      mainAxisAlignment:MainAxisAlignment.center ,
                                    
                                      children: [
                                        
                                        Align(
                                          child: Text(
                                            "Happy Ride ✈️",
                                            style: TextStyle(
                                              color: Colors.black,
                                                                                          fontSize: 15,
                                        
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                    //  SizedBox(
                    //         height: 45,
                    //         width: double.infinity,
                    //         child: DecoratedBox(
                    //             decoration: BoxDecoration(
                    //                 color: Colors.black,
                    //                 borderRadius: BorderRadius.circular(5)),
                    //             child: ElevatedButton(
                    //                 style: ElevatedButton.styleFrom(
                    //                     backgroundColor: Colors.black),
                    //                 onPressed: () async {
                    //                   _showfrom(context, null);
                    //                 },
                    //                 child: Text(
                    //                   "Start Trip",
                    //                   style: TextStyle(
                    //                       fontSize: 20, color: Colors.white),
                    //                 ))),
                    //       ),
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}



