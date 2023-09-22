import 'package:flutter/material.dart';

class drivesearch extends StatelessWidget {
  const drivesearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(),
      ),
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
