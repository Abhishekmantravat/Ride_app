// import 'dart:js';

// import 'package:flutter/material.dart';
// class bottom extends StatelessWidget {
//   const bottom({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(),
//     );
//   }
//   showModalBottomSheet<void>(
//                                       // context and builder are
//                                       // required properties in this widget
//                                       context: context,
//                                       builder: (BuildContext context) {
//                                         // we set up a container inside which
//                                         // we create center column and display text

//                                         // Returning SizedBox instead of a Container
//                                         return SizedBox(
//                                           height: screenHeight,
//                                           child: SingleChildScrollView(
//                                             child: Center(
//                                               child: Container(
//                                                 padding: EdgeInsets.only(
//                                                     left: 10,
//                                                     right: 10,
//                                                     top: 60),
//                                                 child: Column(
//                                                   mainAxisAlignment:
//                                                       MainAxisAlignment.center,
//                                                   children: <Widget>[
//                                                     TextFormField(
//                                                       onChanged: (value) {
//                                                         setState(() {
//                                                           // description = value;
//                                                         });
//                                                       },
//                                                       style: TextStyle(
//                                                           color: Colors.grey),
//                                                       decoration:
//                                                           InputDecoration(
//                                                         border:
//                                                             OutlineInputBorder(
//                                                           borderRadius:
//                                                               BorderRadius
//                                                                   .circular(
//                                                                       10.0),
//                                                         ),
//                                                         enabledBorder:
//                                                             OutlineInputBorder(
//                                                                 borderSide: BorderSide(
//                                                                     width: 2,
//                                                                     color: Colors
//                                                                         .grey)),
//                                                         focusedBorder: OutlineInputBorder(
//                                                             borderSide:
//                                                                 const BorderSide(
//                                                                     color: Colors
//                                                                         .grey)),
//                                                         labelText:
//                                                             "Your location",
//                                                         labelStyle: TextStyle(
//                                                             color: Colors.grey),
//                                                       ),
//                                                     ),
//                                                     SizedBox(height: 16),
//                                                     TextFormField(
//                                                       onChanged: (value) {
//                                                         setState(() {
//                                                           // description = value;
//                                                         });
//                                                       },
//                                                       style: TextStyle(
//                                                           color: Colors.grey),
//                                                       decoration:
//                                                           InputDecoration(
//                                                         border:
//                                                             OutlineInputBorder(
//                                                           borderRadius:
//                                                               BorderRadius
//                                                                   .circular(
//                                                                       10.0),
//                                                         ),
//                                                         enabledBorder:
//                                                             OutlineInputBorder(
//                                                                 borderSide: BorderSide(
//                                                                     width: 2,
//                                                                     color: Colors
//                                                                         .grey)),
//                                                         focusedBorder: OutlineInputBorder(
//                                                             borderSide:
//                                                                 const BorderSide(
//                                                                     color: Colors
//                                                                         .grey)),
//                                                         labelText:
//                                                             "Destination",
//                                                         labelStyle: TextStyle(
//                                                             color: Colors.grey),
//                                                       ),
//                                                     ),
//                                                     SizedBox(height: 16),
//                                                     ElevatedButton(
//                                                       style: ElevatedButton
//                                                           .styleFrom(
//                                                         backgroundColor:
//                                                             Colors.grey[500],
//                                                         elevation: 0.5,
//                                                       ),
//                                                       onPressed: () {
//                                                         //
//                                                       },
//                                                       child: Text("Search"),
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                         );
//                                       },
//                                     );
// }

// import 'dart:js';

// import 'package:flutter/material.dart';

// void _showModal() {
//   showModalBottomSheet(
//     isScrollControlled: true,
//     context: context,
//     builder: (BuildContext context) {
//       return Container(
//         padding: EdgeInsets.only(
//           bottom: MediaQuery.of(context).viewInsets.bottom,
//         ),
//         // You can wrap this Column with Padding of 8.0 for better design
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
// TextFormField(
//                                                       onChanged: (value) {
//                                                         setState(() {
//                                                           // description = value;
//                                                         });
//                                                       },
//                                                       style: TextStyle(
//                                                           color: Colors.grey),
//                                                       decoration:
//                                                           InputDecoration(
//                                                         border:
//                                                             OutlineInputBorder(
//                                                           borderRadius:
//                                                               BorderRadius
//                                                                   .circular(
//                                                                       10.0),
//                                                         ),
//                                                         enabledBorder:
//                                                             OutlineInputBorder(
//                                                                 borderSide: BorderSide(
//                                                                     width: 2,
//                                                                     color: Colors
//                                                                         .grey)),
//                                                         focusedBorder: OutlineInputBorder(
//                                                             borderSide:
//                                                                 const BorderSide(
//                                                                     color: Colors
//                                                                         .grey)),
//                                                         labelText:
//                                                             "Destination",
//                                                         labelStyle: TextStyle(
//                                                             color: Colors.grey),
//                                                       ),
//                                                     ),            SizedBox(height: 5.0),
// TextFormField(
//                                                       onChanged: (value) {
//                                                         setState(() {
//                                                           // description = value;
//                                                         });
//                                                       },
//                                                       style: TextStyle(
//                                                           color: Colors.grey),
//                                                       decoration:
//                                                           InputDecoration(
//                                                         border:
//                                                             OutlineInputBorder(
//                                                           borderRadius:
//                                                               BorderRadius
//                                                                   .circular(
//                                                                       10.0),
//                                                         ),
//                                                         enabledBorder:
//                                                             OutlineInputBorder(
//                                                                 borderSide: BorderSide(
//                                                                     width: 2,
//                                                                     color: Colors
//                                                                         .grey)),
//                                                         focusedBorder: OutlineInputBorder(
//                                                             borderSide:
//                                                                 const BorderSide(
//                                                                     color: Colors
//                                                                         .grey)),
//                                                         labelText:
//                                                             "Destination",
//                                                         labelStyle: TextStyle(
//                                                             color: Colors.grey),
//                                                       ),
//                                                     ),            SizedBox(height: 5.0),
// TextFormField(
//                                                       onChanged: (value) {
//                                                         setState(() {
//                                                           // description = value;
//                                                         });
//                                                       },
//                                                       style: TextStyle(
//                                                           color: Colors.grey),
//                                                       decoration:
//                                                           InputDecoration(
//                                                         border:
//                                                             OutlineInputBorder(
//                                                           borderRadius:
//                                                               BorderRadius
//                                                                   .circular(
//                                                                       10.0),
//                                                         ),
//                                                         enabledBorder:
//                                                             OutlineInputBorder(
//                                                                 borderSide: BorderSide(
//                                                                     width: 2,
//                                                                     color: Colors
//                                                                         .grey)),
//                                                         focusedBorder: OutlineInputBorder(
//                                                             borderSide:
//                                                                 const BorderSide(
//                                                                     color: Colors
//                                                                         .grey)),
//                                                         labelText:
//                                                             "Destination",
//                                                         labelStyle: TextStyle(
//                                                             color: Colors.grey),
//                                                       ),
//                                                     ),          ]
//         ),
//       );
//     },
//   );
// } 





// https://looka.com/s/148403453