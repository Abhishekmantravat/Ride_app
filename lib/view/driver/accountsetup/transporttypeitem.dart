import 'package:flutter/material.dart';

class transporttypeitem extends StatelessWidget {
  transporttypeitem(
      {super.key,
      required this.icon,
      required this.buttonText,
      required this.onTap});
  final IconData icon;
  final String buttonText;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.red,
      onTap: onTap,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(icon as IconData?),
              SizedBox(width: 14),
              Text(buttonText),
              const Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Icon(Icons.navigate_next)],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
