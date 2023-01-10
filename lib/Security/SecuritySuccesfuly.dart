import 'package:flutter/material.dart';

import '../Drawer.dart';
// import 'package:omkar_development/Drawer.dart';
// import 'package:flutter_application_changesnew2/Drawer.dart';

class SecuritySuccesfuly extends StatefulWidget {
  const SecuritySuccesfuly({super.key});

  @override
  State<SecuritySuccesfuly> createState() => _SecuritySuccesfulyState();
}

class _SecuritySuccesfulyState extends State<SecuritySuccesfuly> {
  late int selectedRadio;
  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(val) {
    setState(() {
      selectedRadio = val;
    });
  }

  String dropdownvalue = '31';
  String dropdownvalue1 = '34';
  String dropdownvalue2 = '37';
  String dropdownvalue3 = '40';

  // List of items in our dropdown menu
  var items = [
    '31',
    '32',
    '33',
  ];
  var items1 = [
    '34',
    '35',
    '36',
  ];
  var items2 = [
    '37',
    '38',
    '39',
  ];
  var items3 = [
    '40',
    '41',
    '42',
  ];

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    var ScreenSize = MediaQuery.of(context);
    return AlertDialog(
      // insetPadding: EdgeInsets.fromLTRB(13, 93, 10, 145),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(9),
      ),
      elevation: 10,
      title: Container(
        width: ScreenSize.size.width,
        // color: Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SizedBox(
                  //   height: ScreenSize.size.height * 0.02,
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Text(
                  //       'Security',
                  //       style: TextStyle(
                  //         fontSize: 15.0,
                  //         fontWeight: FontWeight.w700,
                  //         color: Color(0xff09618E),
                  //         fontFamily: 'Inter',
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // SizedBox(
                  //   height: ScreenSize.size.height * 0.01,
                  // ),
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            // width: ScreenSize.size.width * 0.81,
                            height: ScreenSize.size.height * 0.10,
                            // color: Colors.amber,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  // color: Colors.amber,
                                  width: ScreenSize.size.width * 0.61,
                                  height: ScreenSize.size.height * 0.10,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Your Security Request Submitted Successfully!.\n your tracking id is:-",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 12),
                                        textAlign: TextAlign.left,
                                      ),
                                      const SelectableText(
                                        '23AS569KION',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              // Text(
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  // color: Colors.amber,
                  width: ScreenSize.size.width * 0.61,
                  height: ScreenSize.size.height * 0.07,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // Container(
                      //     height: ScreenSize.size.height * 0.053,
                      //     width: ScreenSize.size.width * 0.25,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            child: Container(
                              // color: Colors.amber,
                              width: ScreenSize.size.width * 0.15,
                              child: Text(
                                'ok',
                                style: TextStyle(fontSize: 24),
                              ),
                            ),
                            style: TextButton.styleFrom(
                                primary: Colors.teal,
                                backgroundColor: Colors.white),
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>  Drawer1(),
                                ),
                              );
                            },
                          ),
                        ],
                      )

                      // )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: ScreenSize.size.height * 0.03,
            ),
          ],
        ),
      ),
    );
  }
}
