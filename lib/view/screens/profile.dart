import 'dart:io';

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:image_picker/image_picker.dart';

import '../../res/constant/button.dart';

  File? galleryFile;

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final picker = ImagePicker();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Profile", style: TextStyle(color: Colors.black)),
        leading: const BackButton(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.only(top: 30),
              child: Column(children: [
                Container(
                  child: Column(children: [
                    Stack(
                      children: [
                        SizedBox(
                            width: 120,
                            height: 120,
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
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.blue),
                              child: IconButton(
                                onPressed: () {
                                  _showPicker(context: context);
                                },
                                icon: const Icon(Icons.edit),
                                iconSize: 20,
                                color: Colors.white,
                                tooltip: "change picture",
                                mouseCursor: SystemMouseCursors.click,
                              ),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    const Text("Abhishek Mishra",
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                    const Text(
                      "6386444795",
                      style: TextStyle(color: Color.fromARGB(255, 48, 45, 45)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ]),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      TextFormField(
                        style: const TextStyle(color: Colors.grey),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          labelText: "Name",
                          labelStyle: const TextStyle(color: Colors.grey),
                          prefixIcon: const Icon(Icons.person_2),
                          prefixIconColor: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        style: const TextStyle(color: Colors.grey),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          labelText: "About",
                          prefixIcon: const Icon(Icons.more),
                          prefixIconColor: Colors.grey,
                          labelStyle: const TextStyle(color: Colors.grey),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        style: const TextStyle(color: Colors.grey),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          labelText: "Phone no",
                          labelStyle: const TextStyle(color: Colors.grey),
                          prefixIcon: const Icon(Icons.phone),
                          prefixIconColor: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                     

                                      button(buttonText: "Update Information", onTap: (){}, buttonheight: 55, buttoncolor: Colors.black)

                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ]))),
    );
  }

  void _showPicker({
    required BuildContext context,
  }) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Photo Library'),
                onTap: () {
                  getImage(ImageSource.gallery);
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: const Text('Camera'),
                onTap: () {
                  getImage(ImageSource.camera);
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future getImage(
    ImageSource img,
  ) async {
    final pickedFile = await picker.pickImage(source: img);
    XFile? xfilePick = pickedFile;
    setState(
      () {
        if (xfilePick != null) {
          galleryFile = File(pickedFile!.path);
          ScaffoldMessenger.of(context).showSnackBar(// is this context <<<
               SnackBar(content: Text(pickedFile.path as String)));
        } else {
          ScaffoldMessenger.of(context).showSnackBar(// is this context <<<
              const SnackBar(content: Text('Nothing is selected')));
        }
      },
    );
  }
}
