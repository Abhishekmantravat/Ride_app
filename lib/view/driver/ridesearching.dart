import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rideapp/res/constant/button.dart';
import 'package:awesome_ripple_animation/awesome_ripple_animation.dart';
import 'package:rideapp/view/driver/driverhome_page.dart';

class passenger_fetch extends StatelessWidget {
  const passenger_fetch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar( 
  title: Text("Searching....",style: TextStyle(fontSize: 20),),
   actions: <Widget>[
    
    SizedBox(child:DecoratedBox(decoration: BoxDecoration(color: Colors.black , borderRadius: BorderRadius.circular(30)),
    
      child: ElevatedButton(onPressed: (){
        Get.to(driverhome_page());
      }, style: ElevatedButton.styleFrom(backgroundColor: Colors.black), child: Text("Cancle" , style: TextStyle(color: Colors.white),))))  , SizedBox(width: 20,)
  ],

  
  // bottom: PreferredSize(
  //    preferredSize: const Size.fromHeight(4.0),
  //    child: Container(
  //       color: const Color.fromARGB(255, 3, 3, 3),
  //       height: 2.0,
  //    ),),
  toolbarHeight: 80,

     ),

      body:
     
//         Container(
//           padding: EdgeInsets.all(10),
//           child: Column(
//             children: [
             

              

//               Container(
//                  width: 342,
//                       height: 200,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         gradient: LinearGradient(
//                           begin: Alignment(0.91, 0.41),
//                           end: Alignment(-0.91, -0.41),
//                           colors: [Color(0xFF1566DF), Color(0xFF20C4DA)],
//                         ),),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                      Row(
//                children:[
//                 Text("My Wallet",style: TextStyle(color: Colors.white,fontSize: 16,
//             fontFamily: 'Inter',
//             fontWeight: FontWeight.w600,
//             height: 0.09,
//  ),)
//                ]

//               ),

//                 Row(
//                children:[
//                 Text(
//           'EQDHirLoAYIhplO...',
//           style: TextStyle(
//             color: Color(0xFFE8EFFB),
//             fontSize: 12,
//             fontFamily: 'Inter',
//             fontWeight: FontWeight.w400,
//             height: 0.08,
//           ),
//         ),

//         Icon(Icons.copy,),
//                ]

//               ),


//                Row(
//                children:[
//                 Text.rich(
//           TextSpan(
//             children: [
//               TextSpan(
//                 text: '\$ 1520',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 28,
//                   fontFamily: 'Inter',
//                   fontWeight: FontWeight.w800,
//                   height: 0.04,
//                 ),
//               ),
//               TextSpan(
//                 text: ',',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 28,
//                   fontFamily: 'Inter',
//                   fontWeight: FontWeight.w400,
//                   height: 0.04,
//                 ),
//               ),
//               TextSpan(
//                 text: '056',
//                 style: TextStyle(
//                   color: Colors.white.withOpacity(0.7200000286102295),
//                   fontSize: 28,
//                   fontFamily: 'Inter',
//                   fontWeight: FontWeight.w800,
//                   height: 0.04,
//                 ),
//               ),
//                ])
//               )

//                ]),

//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Container(
//                                       width: 124,
//                   height: 40,
//                   padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//                           clipBehavior: Clip.antiAlias,
//                 decoration: ShapeDecoration(
//                   color: Color.fromARGB(255, 222, 91, 91).withOpacity(0.1599999964237213),
//                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),),
//                           child: Text(
//                             'Receive',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 14,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w500,
//                               height: 0.11,
//                             ),
//                           ),
//                         ),

//                          Container(
//                                       width: 124,
//                   height: 40,
//                   padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//                           clipBehavior: Clip.antiAlias,
//                 decoration: ShapeDecoration(
//                   color: Color.fromARGB(255, 222, 91, 91).withOpacity(0.1599999964237213),
//                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),),
//                           child: Text(
//                             'Send',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 14,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w500,
//                               height: 0.11,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                       ),


//                       Row(
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 width: 110,
//                 height: 48,
//                 child: Stack(
//                   children: [
//                     Positioned(
//                       left: 0,
//                       top: 0,
//                       child: Container(
//                         width: 110,
//                         height: 48,
//                         decoration: ShapeDecoration(
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(16),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       left: 27.50,
//                       top: 12,
//                       child: Text(
//                         'Assets',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           color: Color(0xFF1A70FE),
//                           fontSize: 16,
//                           fontFamily: 'Inter',
//                           fontWeight: FontWeight.w500,
//                           height: 0.09,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
              
//               const SizedBox(width: 92),
//               Container(
//                 width: 110,
//                 height: 48,
//                 child: Stack(
//                   children: [
//                     Positioned(
//                       left: 0,
//                       top: 0,
//                       child: Container(
//                         width: 110,
//                         height: 48,
//                         decoration: ShapeDecoration(
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(100),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       left: 25.30,
//                       top: 12,
//                       child: Text(
//                         'History',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           color: Color(0xFF5A6775),
//                           fontSize: 16,
//                           fontFamily: 'Inter',
//                           fontWeight: FontWeight.w500,
//                           height: 0.09,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//             ],
//           ),
//         )
        
   
        
      
      
       RippleAnimation(
        repeat: true,
        color: Colors.blue,
        minRadius: 80,
        delay: Duration(microseconds: 232),
        ripplesCount: 4,
                child: Container( )),
    );
  }
}
