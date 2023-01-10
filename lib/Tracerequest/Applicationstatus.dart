import 'package:date_time_picker/date_time_picker.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:omkarreal_application_123/Tracerequest/TraceRequest.dart';

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
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
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Trace()));
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        centerTitle: true,
        title: Text('Apllication status',
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
              padding: const EdgeInsets.fromLTRB(10, 15, 1, 0),
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
                                  color: Colors.blueGrey,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8.0),
                                      topRight: Radius.circular(8.0))),
                              width: ScreenSize.size.width * 0.94,
                              // color: Color.fromARGB(255, 106, 0, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                          height: ScreenSize.size.height * 0.08,
                                          width: ScreenSize.size.width * 0.14,
                                          child: Icon(
                                            Icons.person,
                                            size: 30,
                                          )),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        width: ScreenSize.size.width * 0.80,
                                        child: Row(
                                          children: [
                                            Text(
                                              "Application id",
                                              style: TextStyle(
                                                letterSpacing: 1.2,
                                                fontSize: 13.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                                fontFamily: 'Inter',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: ScreenSize.size.width * 0.80,
                                        child: Row(
                                          children: [
                                            Text(
                                              "54HV78G90",
                                              style: TextStyle(
                                                letterSpacing: 1.2,
                                                fontSize: 13.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                                fontFamily: 'Inter',
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            // SizedBox(
                            //   height: ScreenSize.size.height * 0.01,
                            // ),
                          ],
                        ),

                        // Text(
                      ]),
                      // SizedBox(
                      //   height: ScreenSize.size.height * 0.01,
                      // ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: ScreenSize.size.height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(7, 10, 1, 0),
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
                              width: ScreenSize.size.width * 0.94,
                              // color: Color.fromARGB(255, 106, 0, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [],
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 16),
                                    child: Container(
                                      height: ScreenSize.size.height * 0.08,
                                      width: ScreenSize.size.width * 0.80,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          border: UnderlineInputBorder(),
                                          labelText: 'Service Name',
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: ScreenSize.size.height * 0.08,
                                  width: ScreenSize.size.width * 0.80,
                                  child: DateTimePicker(
                                    initialValue: '',
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime(2100),
                                    dateLabelText: 'Date of application',
                                    onChanged: (val) => print(val),
                                    validator: (val) {
                                      print(val);
                                      return null;
                                    },
                                    onSaved: (val) => print(val),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 16),
                                    child: Container(
                                      height: ScreenSize.size.height * 0.08,
                                      width: ScreenSize.size.width * 0.80,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          border: UnderlineInputBorder(),
                                          labelText: 'Gala Number',
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 16),
                                    child: Container(
                                      height: ScreenSize.size.height * 0.08,
                                      width: ScreenSize.size.width * 0.80,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          border: UnderlineInputBorder(),
                                          labelText:
                                              'Application current status',
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: ScreenSize.size.height * 0.01,
                            ),
                          ],
                        ),
                      ]),
                      SizedBox(
                        height: ScreenSize.size.height * 0.01,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(22, 2, 10, 5),
                        child: Row(
                          children: [
                            Text(
                              "Remark",
                              style: TextStyle(
                                letterSpacing: 1.2,
                                fontSize: 13.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontFamily: 'Inter',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(29, 2, 10, 5),
                        child: Row(
                          children: [
                            Text(
                              "I have need to 12 hour watch man for night\nshift,so can you please provide me as\nsoon as possible",
                              style: TextStyle(
                                letterSpacing: 1.2,
                                fontSize: 13.0,
                                // fontWeight: FontWeight.w700,
                                color: Colors.black,
                                // fontFamily: 'Inter',
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: ScreenSize.size.height * 0.03,
                      )
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
