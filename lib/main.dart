import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rideapp/random.dart';
import 'package:rideapp/view/driver/driverhome_page.dart';
import 'package:rideapp/view/screens/phone_verification.dart';
import 'res/constant/hight.dart';
import 'package:firebase_core/firebase_core.dart';


void main() {
//  WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
        final screenHeight = ScreenUtil.screenHeight(context);

    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(),
    );
  }
}




class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:phonelogin(),

    );
  }
}