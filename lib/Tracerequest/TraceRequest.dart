import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:omkarreal_application_123/Drawer.dart';
import 'package:omkarreal_application_123/Tracerequest/Applicationstatus.dart';

class Trace extends StatefulWidget {
  const Trace({super.key});

  @override
  State<Trace> createState() => _TraceState();
}

class _TraceState extends State<Trace> {
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
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_outlined,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Drawer1()));
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        centerTitle: true,
        title: Text('Trace status',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              color: Color(0xff09618E),
              fontFamily: 'bold',
            )),

        // leadingWidth: 50,
        backgroundColor: Colors.white,
        // elevation: 3,
        foregroundColor: Colors.white,
        // titleSpacing: -10,
        // actions: [Image.asset("assets/images/Ellipse 27.png")],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     Container(
            //       // color: Colors.amber,
            //       height: ScreenSize.size.height * 0.09,
            //       width: ScreenSize.size.width * 0.40,
            //       child: Image.asset('assets/images/omkar-logo 1.png'),
            //     ),
            //   ],
            // ),

            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 14, 0),
              child: Card(
                // insetPadding: EdgeInsets.fromLTRB(5, 30, 5, 0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9),
                ),
                elevation: 10,
                child: Container(
                  width: ScreenSize.size.width,
                  // color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: ScreenSize.size.height * 0.00,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 69, 80, 94),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8.0),
                                      topRight: Radius.circular(8.0))),
                              width: ScreenSize.size.width * 0.89,
                              // color: Color.fromARGB(255, 106, 0, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: ScreenSize.size.width * 0.10,
                                    child: Icon(
                                      Icons.receipt_long_rounded,
                                      size: 25,
                                    ),
                                  ),
                                  Container(
                                    width: ScreenSize.size.width * 0.79,
                                    child: Text(
                                      'View & Track Applied Services',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w700,
                                        color:
                                            Color.fromARGB(255, 178, 181, 182),
                                        fontFamily: 'Inter',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: ScreenSize.size.height * 0.01,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(11.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: ScreenSize.size.width * 0.80,
                                        height: ScreenSize.size.height * 0.10,
                                        // color: Colors.amber,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Text(
                                                  "Here you can trace the current application\napplied by you.you can know the status of\nthe application here",
                                                  style: TextStyle(
                                                    letterSpacing: 1.2,
                                                    fontSize: 11.0,
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.black,
                                                    fontFamily: 'Inter',
                                                  ),
                                                ),
                                                // SizedBox(
                                                //   width: ScreenSize.size.width *
                                                //       0.020,
                                                // ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
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
                            height: ScreenSize.size.height * 0.05,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                    height: ScreenSize.size.height * 0.04,
                                    width: ScreenSize.size.width * 0.50,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary:
                                              Color.fromARGB(255, 69, 80, 94),
                                          // side:
                                          //     BorderSide(color: Colors.white, width: 1),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4.0))),
                                      child: Text(
                                        "Application Records",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w300,
                                          color: Color(0xffFFFFFF),
                                          fontFamily: 'Inter',
                                        ),
                                      ),
                                      onPressed: () {
                                        // showDialog(
                                        //     context: context,
                                        //     builder: (BuildContext context) {
                                        //       return WaterSupplyRepair();
                                        //     });
                                      },
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: ScreenSize.size.height * 0.01,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: ScreenSize.size.height * 0.03,
            ),
            Container(
              width: ScreenSize.size.width * 0.97,
              child: Row(
                children: [
                  IntrinsicWidth(
                    // stepWidth: 160,
                    stepWidth: ScreenSize.size.width * 0.44,
                    child: Divider(
                      color: Color.fromARGB(255, 59, 59, 59),
                      thickness: 2,
                      indent: 10,
                    ),
                  ),
                  Text(
                    "  OR",
                    style: TextStyle(
                        fontSize: 13, color: Colors.black, fontFamily: "bold"),
                  ),
                  IntrinsicWidth(
                    stepWidth: ScreenSize.size.width * 0.44,
                    child: Divider(
                      color: Color.fromARGB(255, 59, 59, 59),
                      thickness: 2,
                      indent: 10,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 14, 0),
              child: Card(
                // insetPadding: EdgeInsets.fromLTRB(5, 30, 5, 0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9),
                ),
                elevation: 10,
                child: Container(
                  width: ScreenSize.size.width,
                  // color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: ScreenSize.size.height * 0.00,
                            ),
                            Container(
                              // width: ScreenSize.size.width * 0.90,
                              // height: ScreenSize.size.height * 0.02,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 69, 80, 94),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8.0),
                                      topRight: Radius.circular(8.0))),
                              width: ScreenSize.size.width * 0.89,
                              // color: Color.fromARGB(255, 106, 0, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.on_device_training_outlined),
                                  SizedBox(
                                    width: ScreenSize.size.width * 0.02,
                                  ),
                                  Container(
                                    width: ScreenSize.size.width * 0.79,
                                    child: Text(
                                      'view & Track Applied Services',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w700,
                                        color:
                                            Color.fromARGB(255, 178, 181, 182),
                                        fontFamily: 'Inter',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: ScreenSize.size.height * 0.01,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(00.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: ScreenSize.size.width * 0.87,
                                        height: ScreenSize.size.height * 0.08,
                                        // color: Colors.amber,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Text(
                                                    "Here you can trace the current application\napplied by you.you can know the status of\nthe application here",
                                                    style: TextStyle(
                                                      letterSpacing: 1.2,
                                                      fontSize: 11.0,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.black,
                                                      fontFamily: 'Inter',
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ]),
                      SizedBox(
                        height: ScreenSize.size.height * 0.02,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Container(
                              width: ScreenSize.size.width * 0.80,
                              // height: ScreenSize.size.height * 0.10,
                              child: TextField(
                                cursorHeight: 10,
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Enter Tracking id',
                                  // hintText: 'Enter Password',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: ScreenSize.size.height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            // color: Colors.amber,
                            height: ScreenSize.size.height * 0.05,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                    height: ScreenSize.size.height * 0.04,
                                    width: ScreenSize.size.width * 0.50,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary:
                                              Color.fromARGB(255, 69, 80, 94),
                                          // side:
                                          //     BorderSide(color: Colors.white, width: 1),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4.0))),
                                      child: Text(
                                        "Get status",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w300,
                                          color: Color(0xffFFFFFF),
                                          fontFamily: 'Inter',
                                        ),
                                      ),
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Application();
                                            });
                                      },
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: ScreenSize.size.height * 0.01,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
