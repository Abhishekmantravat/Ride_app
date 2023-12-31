// import 'package:fast_contacts/fast_contacts.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:url_launcher/url_launcher.dart';

class contact extends StatefulWidget {
  const contact({super.key});

  @override
  State<contact> createState() => _contactState();
}

class _contactState extends State<contact> {
  List<Contact>? contacts;
  void initState() {
    super.initState();
    getPhoneData();
  }

  void getPhoneData() async {
    if (await FlutterContacts.requestPermission()) {
      contacts = await FlutterContacts.getContacts( 
          withProperties: true, deduplicateProperties: false, sorted: true, withAccounts: true, withThumbnail: true, withGroups: true,  withPhoto: true);

      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Contacts"),
          centerTitle: true,
        ),
        body: (contacts == null)
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: contacts!.length,
                itemBuilder: (BuildContext context, int index) {
                  Uint8List? image = contacts![index].photo;
                  String number = (contacts![index].phones.isNotEmpty)
                      ? contacts![index].phones.first.number
                      : "---";
                  return ListTile(
                      leading: (image == null)
                          ? const CircleAvatar(
                              child: Icon(Icons.person),
                            )
                          : CircleAvatar(
                              backgroundImage: MemoryImage(image),
                            ),
                      title: Text(contacts![index].name.first),
                      subtitle: Text(number),
                      onTap: () {
                        launch('tel:  ${number}');
                      });
                }));
  }
}
