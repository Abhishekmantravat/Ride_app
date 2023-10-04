import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenUtil {
  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}

// bool isSwitched = false;
// bool isSwitched = false;

// Future<void> setSwitchedValue(bool newValue) async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   await prefs.setBool('isSwitched', newValue);
// }

// Future<void> getSwitchedValue() async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   isSwitched = prefs.getBool('isSwitched') ?? false;
// }

bool isSwitched = false;
// bool issearch = false;



 Future<void> saveSwitchValue(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isSwitched', value);
  }