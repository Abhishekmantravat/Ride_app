import 'package:flutter/material.dart';
import 'package:rideapp/res/constant/button.dart';
import 'package:url_launcher/url_launcher.dart';

void showCustomDialog(BuildContext context) {
  double screenHeight = MediaQuery.of(context).size.height;

  showModalBottomSheet(
    context: context,
    elevation: 2,
    isScrollControlled: true,
    // backgroundColor: Colors.black,
    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
    builder: (BuildContext context) => GestureDetector(
      onTap:(){
          FocusScope.of(context).requestFocus(FocusNode());
        },
      child: Container(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.55,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                      width: 80,
                      child: Divider(
                        color: Colors.grey,
                        height: 30,
                        thickness: 3,
                        indent: 5,
                        endIndent: 5,
                      )),
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        TextFormField(
                          onChanged: (value) {
                            // setState(() {
                            //   // description = value;
                            // });
                          },
                          style: const TextStyle(color: Colors.black),
                          decoration: const InputDecoration(
                            labelText: "Your location",
                            labelStyle: TextStyle(color: Colors.black),
                          ),
                          autofocus: true,
                        ),
                        TextFormField(
                          onChanged: (value) {
                            // setState(() {
                            //   // description = value;
                            // });
                          },
                          style: const TextStyle(color: Colors.black),
                          decoration: const InputDecoration(
                            labelText: "Destination",
                            labelStyle: TextStyle(color: Colors.black),
                          ),
                          autofocus: true,
                        ),
                        TextFormField(
                          onChanged: (value) {
                            // setState(() {
                            //   // description = value;
                            // });
                          },
                          style: const TextStyle(color: Colors.black),
                          decoration: const InputDecoration(
                            labelText: "Seats",
                            labelStyle: TextStyle(color: Colors.black),
                          ),
                          autofocus: true,
                        ),
                        DropdownButtonFormField<String>(
                          // value: selectedType,
                          items: <String>[
                            'AC Car',
                            'Car'
                                'Lodar'
                                'Moto'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            // setState(() {
                            //   // selectedType = newValue!;
                            // });
                          },
                          style: const TextStyle(color: Colors.black),
                          decoration: const InputDecoration(
                            labelText: "category",
                            labelStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                        const SizedBox(height: 40),
                        button(
                          buttonText: "Search",
                          buttoncolor: Colors.black,
                          buttonheight: 55,
                          onTap: () {
                            showtransport(
                              context,
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

//

void showform(BuildContext context) {
  double screenHeight = MediaQuery.of(context).size.height;

  showModalBottomSheet<void>(
    elevation: 2,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      // we set up a container inside which
      // we create center column and display text

      // Returning SizedBox instead of a Container
      return Container(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.48,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                      width: 80,
                      child: Divider(
                        color: Colors.grey,
                        height: 30,
                        thickness: 3,
                        indent: 5,
                        endIndent: 5,
                      )),
                  Container(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        TextFormField(
                          onChanged: (value) {
                            // setState(() {
                            //   // description = value;
                            // });
                          },
                          style: const TextStyle(color: Colors.black),
                          decoration: const InputDecoration(
                            labelText: "Your location",
                            labelStyle: TextStyle(color: Colors.black),
                          ),
                          autofocus: true,
                        ),
                        TextFormField(
                          onChanged: (value) {
                            // setState(() {
                            //   // description = value;
                            // });
                          },
                          style: const TextStyle(color: Colors.black),
                          decoration: const InputDecoration(
                            labelText: "Destination",
                            labelStyle: TextStyle(color: Colors.black),
                          ),
                          autofocus: true,
                        ),
                        TextFormField(
                          onChanged: (value) {
                            // setState(() {
                            //   // description = value;
                            // });
                          },
                          style: const TextStyle(color: Colors.black),
                          decoration: const InputDecoration(
                            labelText: "Seats ",
                            labelStyle: TextStyle(color: Colors.black),
                          ),
                          autofocus: true,
                        ),
                        const SizedBox(height: 40),
                        button(
                          buttonText: "Search",
                          buttoncolor: Colors.black,
                          buttonheight: 55,
                          onTap: () {
                            showtransport(
                              context,
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}

void showtransport(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) => Container(
      height: MediaQuery.of(context).size.height * 0.75,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: SizedBox(
                  width: 80,
                  child: Divider(
                    color: Colors.grey,
                    height: 30,
                    thickness: 3,
                    indent: 5,
                    endIndent: 5,
                  )),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                height: 60,
                width: double.infinity,
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0),
                    ),
                    // border: Border.all(color: Colors.grey)
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 60,
                        //  padding: EdgeInsets.all(20),
                        child: Center(
                          child: Column(
                            children: [
                              const SizedBox(height: 6),
                              Container(
                                  height: 10,
                                  width: 10,
                                  child: const CircleAvatar(
                                    backgroundColor: Colors.green,
                                  )),
                              const SizedBox(height: 3),
                              const SizedBox(
                                height: 25,
                                child: VerticalDivider(
                                  color: Colors.grey,
                                  thickness: 2,
                                ),
                              ),
                              const SizedBox(height: 3),
                              Container(
                                  height: 10,
                                  width: 10,
                                  child: const CircleAvatar(
                                    backgroundColor: Colors.red,
                                  ))
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Container(
                        // padding: const EdgeInsets.only(top: 20),
                        child: const Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "your location ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Divider(height: 19),
                              Text(
                                "your dictination",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 6),
            const Divider(),
            Container(
                padding: const EdgeInsets.only(
                    bottom: 20, left: 10, right: 10, top: 10),
                child: Column(children: [
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 6),
                        Text(
                          "Recommended for you ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ]),
                  const SizedBox(height: 10),
                  InkWell(
                    onTap: () {
                      Driverdetail(context);
                    },
                    child: SizedBox(
                      height: 80,
                      width: double.infinity,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade500,
                                  offset: const Offset(1.0, 1.0),
                                  blurRadius: 5.0,
                                  spreadRadius: 0.5),
                              const BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(-2.0, -2.0),
                                  blurRadius: 5.0,
                                  spreadRadius: 1.0),
                            ],
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 246, 243, 243))),
                        child: Row(
                          children: [
                            const SizedBox(
                              height: 80,
                              width: 80,
                              // padding: EdgeInsets.all(20),
                              child: Center(
                                child: Column(
                                  children: [
                                    SizedBox(height: 12),
                                    Stack(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                            "assets/images/ride ac.png",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        Positioned(
                                          bottom: -5,
                                          left: 24,
                                          child: Text(
                                            '6 min',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 20),
                              child: const Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "pushkar d ",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "February 24,2022",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                                child: Container(
                              padding: const EdgeInsets.only(right: 30),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.currency_rupee,
                                    size: 15,
                                  ),
                                  Text(
                                    "240.00",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            height: 80,
                            width: 80,
                            // padding: EdgeInsets.all(20),
                            child: Center(
                              child: Column(
                                children: [
                                  SizedBox(height: 4),
                                  Stack(
                                    children: [
                                      Image(
                                        image: AssetImage(
                                          "assets/images/ride ac.png",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      Positioned(
                                        bottom: -5,
                                        left: 24,
                                        child: Text(
                                          '6 min',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 10),
                            child: const Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "pushkar d ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "February 24,2022",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                              child: Container(
                            padding: const EdgeInsets.only(right: 30),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.currency_rupee,
                                  size: 15,
                                ),
                                Text(
                                  "240.00",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ))
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            height: 80,
                            width: 80,
                            child: Center(
                              child: Column(
                                children: [
                                  SizedBox(height: 4),
                                  Stack(
                                    children: [
                                      Image(
                                        image: AssetImage(
                                          "assets/images/ride ac.png",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      Positioned(
                                        bottom: -5,
                                        left: 24,
                                        child: Text(
                                          '6 min',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 10),
                            child: const Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "pushkar d ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "February 24,2022",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                              child: Container(
                            padding: const EdgeInsets.only(right: 30),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.currency_rupee,
                                  size: 15,
                                ),
                                Text(
                                  "240.00",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ))
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 8),
                        Text(
                          "More available ride",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ]),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            height: 80,
                            width: 80,
                            // padding: EdgeInsets.all(20),
                            child: Center(
                              child: Column(
                                children: [
                                  SizedBox(height: 4),
                                  Stack(
                                    children: [
                                      Image(
                                        image: AssetImage(
                                          "assets/images/ride ac.png",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      Positioned(
                                        bottom: -5,
                                        left: 24,
                                        child: Text(
                                          '6 min',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 10),
                            child: const Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "pushkar d ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "February 24,2022",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                              child: Container(
                            padding: const EdgeInsets.only(right: 30),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.currency_rupee,
                                  size: 15,
                                ),
                                Text(
                                  "240.00",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ))
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            height: 80,
                            width: 80,
                            // padding: EdgeInsets.all(20),
                            child: Center(
                              child: Column(
                                children: [
                                  SizedBox(height: 4),
                                  Stack(
                                    children: [
                                      Image(
                                        image: AssetImage(
                                          "assets/images/ride ac.png",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      Positioned(
                                        bottom: -5,
                                        left: 24,
                                        child: Text(
                                          '6 min',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 10),
                            child: const Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "pushkar d ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "February 24,2022",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                              child: Container(
                            padding: const EdgeInsets.only(right: 30),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.currency_rupee,
                                  size: 15,
                                ),
                                Text(
                                  "240.00",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ))
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            height: 80,
                            width: 80,
                            // padding: EdgeInsets.all(20),
                            child: Center(
                              child: Column(
                                children: [
                                  SizedBox(height: 4),
                                  Stack(
                                    children: [
                                      Image(
                                        image: AssetImage(
                                          "assets/images/ride ac.png",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      Positioned(
                                        bottom: -5,
                                        left: 24,
                                        child: Text(
                                          '6 min',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 10),
                            child: const Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "pushkar d ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "February 24,2022",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                              child: Container(
                            padding: const EdgeInsets.only(right: 30),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.currency_rupee,
                                  size: 15,
                                ),
                                Text(
                                  "240.00",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ))
                        ],
                      ),
                    ),
                  ),
                ])),
          ],
        ),
      ),
    ),
  );
}

void Driverdetail(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) => Container(
      height: MediaQuery.of(context).size.height * 0.75,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: SizedBox(
                  width: 80,
                  child: Divider(
                    color: Colors.grey,
                    height: 30,
                    thickness: 3,
                    indent: 5,
                    endIndent: 5,
                  )),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                height: 60,
                width: double.infinity,
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0),
                    ),
                    // border: Border.all(color: Colors.grey)
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 60,
                        //  padding: EdgeInsets.all(20),
                        child: Center(
                          child: Column(
                            children: [
                              const SizedBox(height: 6),
                              Container(
                                  height: 10,
                                  width: 10,
                                  child: const CircleAvatar(
                                    backgroundColor: Colors.green,
                                  )),
                              const SizedBox(height: 3),
                              const SizedBox(
                                height: 25,
                                child: VerticalDivider(
                                  color: Colors.grey,
                                  thickness: 2,
                                ),
                              ),
                              const SizedBox(height: 3),
                              Container(
                                  height: 10,
                                  width: 10,
                                  child: const CircleAvatar(
                                    backgroundColor: Colors.red,
                                  ))
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Container(
                        // padding: const EdgeInsets.only(top: 20),
                        child: const Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "your location ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Divider(height: 19),
                              Text(
                                "your dictination",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 6),
            const Divider(),
            Container(
                padding: const EdgeInsets.only(
                    bottom: 20, left: 10, right: 10, top: 10),
                child: Column(children: [
                  SizedBox(
                    height: 80,
                    width: double.infinity,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        //  border: Border.all(color: Colors.grey)
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 10),
                            child: const Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Transport type",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "Toyota Corolla",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 4),

                                  //  TextButton(onPressed: (){}, child: Text("View details")),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                              child: Container(
                            padding: const EdgeInsets.only(right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    child: const CircleAvatar(
                                  maxRadius: 30,
                                  backgroundColor:
                                      Color.fromARGB(255, 239, 237, 237),
                                  backgroundImage:
                                      AssetImage("assets/images/lodar car.png"),
                                  //  ImageIcon(
                                  //                                 AssetImage(
                                  //                                     "assets/images/lodar car.png"),
                                  //                                 size: 150,
                                  //                               ),
                                )),
                              ],
                            ),
                          ))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey)),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 13),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Total fare",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  const Text(
                                    "Includes taxes",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 4),

                                  InkWell(
                                      onTap: () {},
                                      child: const Text(
                                        "View details",
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 94, 151, 250),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )),
                                  //  TextButton(onPressed: (){}, child: Text("View details")),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                              child: Container(
                            padding: const EdgeInsets.only(right: 30),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.currency_rupee,
                                  size: 15,
                                ),
                                Text(
                                  "240.00",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ))
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey)),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 13),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(Icons.person_3_outlined),
                                          const SizedBox(width: 10),
                                          const Text(
                                            "Available",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(width: 25),
                                          Container(
                                              height: 4,
                                              width: 4,
                                              child: const CircleAvatar(
                                                backgroundColor: Colors.grey,
                                              )),
                                          const SizedBox(width: 10),
                                          const Text(
                                            "4 seats",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  const Row(
                                    children: [
                                      Icon(Icons.time_to_leave),
                                      SizedBox(width: 10),
                                      Text(
                                        "Arrives in 2 mins",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 4),

                                  const Row(
                                    children: [
                                      Icon(Icons.star),
                                      SizedBox(width: 10),
                                      Text(
                                        "4.75",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  //  TextButton(onPressed: (){}, child: Text("View details")),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  button(
                    buttonText: "Start Trip",
                    buttoncolor: Colors.black,
                    buttonheight: 55,
                    onTap: () {
                      rideconfirm(context);
                    },
                  )
                ])),
          ],
        ),
      ),
    ),
  );
}

void rideconfirm(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) => Container(
      height: MediaQuery.of(context).size.height * 0.75,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 4),
            const Center(
              child: SizedBox(
                  child: Text(
                "Your ride is confirmed",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                height: 60,
                width: double.infinity,
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0),
                    ),
                    // border: Border.all(color: Colors.grey)
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 60,
                        //  padding: EdgeInsets.all(20),
                        child: Center(
                          child: Column(
                            children: [
                              const SizedBox(height: 6),
                              Container(
                                  height: 10,
                                  width: 10,
                                  child: const CircleAvatar(
                                    backgroundColor:
                                        Color.fromARGB(255, 1, 111, 5),
                                  )),
                              const SizedBox(height: 3),
                              SizedBox(
                                height: 25,
                                child: VerticalDivider(
                                  color: Colors.lightGreen[200],
                                  thickness: 1,
                                ),
                              ),
                              const SizedBox(height: 3),
                              Container(
                                  height: 10,
                                  width: 10,
                                  child: const CircleAvatar(
                                    backgroundColor:
                                        Color.fromARGB(255, 161, 18, 8),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Container(
                        // padding: const EdgeInsets.only(top: 20),
                        child: const Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "your location ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Divider(height: 19),
                              Text(
                                "your dictination",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 6),
            const Divider(),
            Container(
                padding: const EdgeInsets.only(
                    bottom: 20, left: 10, right: 10, top: 10),
                child: Column(children: [
                  SizedBox(
                    height: 190,
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
                              color: const Color.fromARGB(255, 245, 242, 242))),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 10),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "UP32MN3088",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  const Text(
                                    "White Dzire Tour Taxi",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 8),

                                  const Row(
                                    children: [
                                      Text(
                                        "Shiv Kumar Shingh",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Icon(
                                        Icons.star,
                                        color:
                                            Color.fromARGB(255, 255, 216, 59),
                                      ),
                                      Text("5.0")
                                    ],
                                  ),
                                  const SizedBox(height: 20),

                                  //  TextButton(onPressed: (){}, child: Text("View details")),

                                  SizedBox(
                                    height: 45,
                                    // width: double.infinity,
                                    child: DecoratedBox(
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.black),
                                            onPressed: () async {
                                              // _showfrom();
                                            },
                                            child: const Row(
                                              children: [
                                                Icon(
                                                  Icons.call,
                                                  color: Color.fromARGB(
                                                      255, 255, 255, 255),
                                                ),
                                                Text(
                                                  " Call Driver",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ))),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                              child: Container(
                            padding: const EdgeInsets.only(right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              //  crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    child: const CircleAvatar(
                                  maxRadius: 30,
                                  backgroundColor:
                                      Color.fromARGB(255, 239, 237, 237),
                                  backgroundImage:
                                      AssetImage("assets/images/lodar car.png"),
                                  //  ImageIcon(
                                  //                                 AssetImage(
                                  //                                     "assets/images/lodar car.png"),
                                  //                                 size: 150,
                                  //                               ),
                                )),
                              ],
                            ),
                          ))
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 165,
                    width: double.infinity,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade500,
                                offset: const Offset(1.0, 1.0),
                                blurRadius: 15.0,
                                spreadRadius: 1.0),
                            const BoxShadow(
                                color: Colors.white,
                                offset: Offset(-1.0, -1.0),
                                blurRadius: 15.0,
                                spreadRadius: 1.0),
                          ],
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: const Color.fromARGB(255, 245, 242, 242))),
                      child: Container(
                        padding: const EdgeInsets.only(top: 13),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Total fare ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.currency_rupee,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                  Text(
                                    "454 ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4),
                              const Divider(
                                thickness: 1,
                                color: Color.fromARGB(255, 241, 238, 238),
                              ),
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Icon(
                                    Icons.payments,
                                    color: Color.fromARGB(255, 150, 255, 59),
                                  ),
                                  const SizedBox(width: 10),
                                  const Text(
                                    "Cash",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(width: 25),
                                  Container(
                                      height: 4,
                                      width: 4,
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.grey,
                                      )),
                                  const SizedBox(width: 10),
                                  const Text(
                                    "Pay when the ride ends",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4),
                              const Divider(
                                thickness: 1,
                                color: Color.fromARGB(255, 241, 238, 238),
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 7,
                                  ),
                                  Row(
                                    children: [
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white),
                                          onPressed: () {},
                                          child: const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Icon(
                                                Icons.cancel,
                                                size: 17,
                                                color: Colors.black,
                                              ),
                                              Text("Cancle",
                                                  style: TextStyle(
                                                      color: Colors.black)),
                                            ],
                                          )),
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white),
                                          onPressed: () {
                                            var whatsappUrl =
                                                "whatsapp://send?phone=91+6386444795" +
                                                    "&text=${Uri.encodeComponent("what is problem")}";
                                            try {
                                              launch(whatsappUrl);
                                            } catch (e) {
                                              //To handle error and display error message
                                              print("not open");
                                            }
                                          },
                                          child: const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Icon(
                                                Icons.support_agent,
                                                size: 17,
                                                color: Colors.black,
                                              ),
                                              Text("Support",
                                                  style: TextStyle(
                                                      color: Colors.black)),
                                            ],
                                          )),
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white),
                                          onPressed: () {
                                            var whatsappUrl =
                                                "whatsapp://send?phone=91+7651872097" +
                                                    "&text=${Uri.encodeComponent("UP32MN3088 is a driver detail")}";
                                            try {
                                              launch(whatsappUrl);
                                            } catch (e) {
                                              //To handle error and display error message
                                              print("not open");
                                            }
                                          },
                                          child: const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Icon(
                                                Icons.share,
                                                size: 17,
                                                color: Colors.black,
                                              ),
                                              Text("Share",
                                                  style: TextStyle(
                                                      color: Colors.black)),
                                            ],
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        child: Text(
                          "Happy Ride ✈️",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),

                  //  SizedBox(
                  //         height: 45,
                  //         width: double.infinity,
                  //         child: DecoratedBox(
                  //             decoration: BoxDecoration(
                  //                 color: Colors.black,
                  //                 borderRadius: BorderRadius.circular(5)),
                  //             child: ElevatedButton(
                  //                 style: ElevatedButton.styleFrom(
                  //                     backgroundColor: Colors.black),
                  //                 onPressed: () async {
                  //                   _showfrom(context, null);
                  //                 },
                  //                 child: Text(
                  //                   "Start Trip",
                  //                   style: TextStyle(
                  //                       fontSize: 20, color: Colors.white),
                  //                 ))),
                  //       ),
                ])),
          ],
        ),
      ),
    ),
  );
}





