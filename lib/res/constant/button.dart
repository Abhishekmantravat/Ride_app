import 'package:flutter/material.dart';

class button extends StatelessWidget {
   button({super.key , required this.buttonText, required this.onTap, required this.buttonheight, required this.buttoncolor});
  final String buttonText;
  final Function()? onTap;
  final double buttonheight;
  final Color buttoncolor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                                height: buttonheight,
                                width: double.infinity,
                                child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color:buttoncolor ,
                                        borderRadius: BorderRadius.circular(20)),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor:  buttoncolor ,),
                                        onPressed: onTap,
                                        child: Text(
                                          buttonText,
                                          style: const TextStyle(
                                              fontSize: 20,
                                              color: Colors.white),
                                        ))),
                              );
  }
}