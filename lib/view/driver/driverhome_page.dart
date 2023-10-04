import 'package:flutter/Material.dart';
import 'package:get/get.dart';
import 'package:rideapp/view/driver/ridesearching.dart';
import 'package:rideapp/view/driver/wallet.dart';
import 'package:rideapp/view/screens/contact.dart';
import 'package:rideapp/view/screens/homescreen.dart';
import 'package:rideapp/view/screens/profile.dart';
import 'package:rideapp/view/screens/request_history.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:rideapp/res/constant/hight.dart';
import '../dialogBox/driverequestdialog.dart';
import '../screens/Safety.dart';

    bool issearch = true;

class driverhome_page extends StatefulWidget {
  const driverhome_page({super.key});

  @override
  State<driverhome_page> createState() => _driverhome_pageState();
}

class _driverhome_pageState extends State<driverhome_page> {
   int _selectedIndex = 0; // Index of the selected tab

  final List<Widget> _pages = [
    // issearch == false ?

       HomeScreen(),
        // passenger_fetch() ,
   wallet(),
    Center(
      child: Text("Account Page"),
    ),
  ];
// @override
  // void didUpdateWidget(covariant driverhome_page oldWidget) {

  //   super.didUpdateWidget(oldWidget);
  //   print("triger");
  // }



  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


//   void updateui(){
// print("dfdf");
//     setState(() {
//       if(issearch==true){
//         issearch=false;
//       }
     
//     });
//   }
  
  
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
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                          accountEmail: Row(
                            children: [
                              const Text("6386444795",
                                  style: TextStyle(color: Colors.black)),SizedBox(width: 115),
                                      Icon(
                                        Icons.star,
                                        color:
                                            Color.fromARGB(255, 255, 216, 59),
                                      ),
                                      
                                      Text("5.0", style: TextStyle(color: Colors.black, fontSize: 15
                                      ),)
                            ],
                          ),
                          currentAccountPictureSize: const Size.square(50),

                          currentAccountPicture: InkWell(

                            onTap: (){
                               Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ProfileScreen()));
                            },
                            child: SizedBox(

                              width: 50,
                              height: 50,
                              child: galleryFile == null
                                  ? ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset(
                                        "assets/images/ride ac.png",
                                        fit: BoxFit.cover,
                                      ))
                                  : ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.file(
                                        galleryFile!,
                                        fit: BoxFit.cover,
                                      ))
                                      ),
                          ),
                          
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
                        leading: const Icon(Icons.group_add),
                        title: const Text(' Safety '),
                        onTap: () {
                             Get.to(                          saftey()
);
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
                        title: const Text(' Request History '),
                        onTap: () {
                          Get.to(Request_history());
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
                        leading: const Icon(Icons.support_agent),
                        title: const Text("Support"),
                        onTap: () {
                         var whatsappUrl = "whatsapp://send?phone=91+7651872097" +
                              "&text=${Uri.encodeComponent("What's a problem")}";
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
                        leading: const Icon(Icons.share_sharp),
                        title: const Text(' Share '),
                        onTap: () {
                          Share.share('hey! check out this new app https://youtu.be/cY4nGCw-JxY?si=pRZgLLRVCimiFyKl', subject: 'New App');

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
 body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onTabTapped,
      ),     
          );
  }
}




class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  
      Center(
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
