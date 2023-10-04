import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

List<dynamic> users = [];

class dddd extends StatefulWidget {
  const dddd({super.key});

  @override
  State<dddd> createState() => _ddddState();
}

class _ddddState extends State<dddd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          final email = user['email'];
          final name = user['name']['first'];
          final imageUrl = user['picture']['thumbnail'];
          print(imageUrl);
          return ListTile(
            title: Text(name),
            subtitle: Text(email),
            leading: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                    "https://randomuser.me/api/portraits/thumb/women/53.jpg")),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        fetchdata();
      }),
    );
  }

  void fetchdata() async {
    print("object");
    const url = 'https://randomuser.me/api/?results=50';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    setState(() {
      users = json['results'];
    });
    print("data");
  }
}






// 8f3e21692ab6f22833db077b62ed36dcb8987b08d31f23e2dd69df194f88bbfd


// appid   126935275