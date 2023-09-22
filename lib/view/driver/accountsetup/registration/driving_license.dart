import 'package:flutter/Material.dart';
import 'package:rideapp/res/constant/button.dart';

class driving_license extends StatefulWidget {
  const driving_license({super.key});

  @override
  State<driving_license> createState() => _driving_licenseState();
}

class _driving_licenseState extends State<driving_license> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text("Driving License"),
          leading: const BackButton(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade500,
                              offset: const Offset(4.0, 4.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0),
                          const BoxShadow(
                              color: Colors.white,
                              offset: Offset(-4.0, -4.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0),
                        ],
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            color: const Color.fromARGB(255, 245, 242, 242)),
                      ),
                      child: const Column(
                        children: [SizedBox(height: 10), SizedBox(height: 10)],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  button(
                    buttonText: "Done",
                    buttonheight: 55,
                    buttoncolor: Colors.black,
                    onTap: () {
                      print("hello");
                    },
                  )
                ],
              )),
        ));
  }
}
