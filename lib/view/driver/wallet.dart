import 'package:flutter/material.dart';

class wallet extends StatefulWidget {
  const wallet({super.key});

  @override
  State<wallet> createState() => _walletState();
}

class _walletState extends State<wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
                      padding: EdgeInsets.only(top: 20,left: 20,right: 20, bottom: 20),

              width: 342,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment(0.91, 0.41),
                  end: Alignment(-0.91, -0.41),
                  colors: [ Color(0xFF20C4DA), Color(0xFF1566DF)],
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Row(children: [
                    Text(
                      "My Wallet",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0.09,
                      ),
                    )
                  ]),
                   SizedBox(
              height: 17,
            ),
                  Row(children: [
                    Text(
                      'EQDHirLoAYIhplO...',
                      style: TextStyle(
                        color: Color(0xFFE8EFFB),
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0.08,
                      ),
                    ),
                    Icon(
                      Icons.copy,size: 15, color: Colors.white,
                    ),
                  ]),

                   SizedBox(
              height: 30,
            ),
                  Row(children: [
                    Text.rich(TextSpan(children: [
                      TextSpan(
                        text: '\$ 1520',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w800,
                          height: 0.04,
                        ),
                      ),
                      TextSpan(
                        text: ',',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0.04,
                        ),
                      ),
                      TextSpan(
                        text: '056',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7200000286102295),
                          fontSize: 28,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w800,
                          height: 0.04,
                        ),
                      ),
                    ]))
                  ]),
                   SizedBox(
              height: 50,
            ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 124,
                        height: 40,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32, vertical: 17),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Color.fromARGB(255, 222, 91, 91)
                              .withOpacity(0.1599999964237213),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                        ),
                        child: Text(
                          'Receive',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0.11,
                          ),
                        ),
                      ),
                      Container(
                        width: 124,
                        height: 40,
                        padding: const EdgeInsets.only(top: 17 ,left: 45),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Color.fromARGB(255, 222, 91, 91)
                              .withOpacity(0.1599999964237213),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                        ),
                        child: Text(
                          'Send',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0.11,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'History',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF5A6775),
                    fontSize: 21,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0.09,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Today',
                  style: TextStyle(
                    color: Color(0xFF5A6775),
                    fontSize: 13,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 0.09,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),

            history_list(),
                        history_list(),
                         SizedBox(
              height: 10,
            ),
 Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Yesterday',
                  style: TextStyle(
                    color: Color(0xFF5A6775),
                    fontSize: 13,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 0.09,
                  ),
                ),
              ],
            ),
 SizedBox(
              height: 10,
            ),
            history_list(),



           
          ],
        ),
      ),
    );
  }
}





class history_list extends StatelessWidget {
  const history_list({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
              height: 66,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                    left: 10,
                    top: 13,
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          padding: const EdgeInsets.all(10),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Color(0x1427AE60),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(),
                                child: Icon(
                                  Icons.call_received,
                                  color: Color(0xFF2BCD7F),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 280,
                    top: 22,
                    child: Text(
                      '+2.28',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF2BCD7F),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0.11,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 80,
                    top: 23,
                    child: Text(
                      'Received:',
                      style: TextStyle(
                        color: Color(0xFF141A21),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0.11,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 80,
                    top: 43,
                    child: Text(
                      'EQCudP0_Xu7qi-aCU ...',
                      style: TextStyle(
                        color: Color(0xFF5A6775),
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0.11,
                      ),
                    ),
                  ),
                ],
              ),
            );
  }
}