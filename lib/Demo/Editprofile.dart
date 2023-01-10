import 'dart:convert';
import 'dart:io';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_application_changesnew2/Drawer.dart';
// import 'package:flutter_application_changesnew2/Electrict/ElectrictSuccesfulyPage.dart';
// import 'package:flutter_application_changesnew2/Logout.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:omkarreal_application_123/Electrict/ElectrictSuccesfulyPage.dart';
import 'package:omkarreal_application_123/updateprofile.dart';

import '../Drawer.dart';

class Editprofile extends StatefulWidget {
  const Editprofile({super.key});

  @override
  State<Editprofile> createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
  String check = 'Notification Form';
  File? selectedImage1;
  File? selectedImage2;
  File? selectedImage3;
  String base64Image = "";

  Future<void> chooseImage(type) async {
    var image;
    if (type == "camera") {
      image = await ImagePicker().pickImage(
        source: ImageSource.camera,
      );
    } else {
      image = await ImagePicker().pickImage(
        source: ImageSource.gallery,
      );
    }
    if (image != null) {
      setState(() {
        selectedImage1 = File(image.path);
        base64Image = base64Encode(selectedImage1!.readAsBytesSync());
      });
    }
  }

  Future<void> chooseImage1(type) async {
    var image;
    if (type == "camera") {
      image = await ImagePicker().pickImage(
        source: ImageSource.camera,
      );
    } else {
      image = await ImagePicker().pickImage(
        source: ImageSource.gallery,
      );
    }
    if (image != null) {
      setState(() {
        selectedImage2 = File(image.path);
        base64Image = base64Encode(selectedImage2!.readAsBytesSync());
      });
    }
  }

  Future<void> chooseImage2(type) async {
    var image;
    if (type == "camera") {
      image = await ImagePicker().pickImage(
        source: ImageSource.camera,
      );
    } else {
      image = await ImagePicker().pickImage(
        source: ImageSource.gallery,
      );
    }
    if (image != null) {
      print("Selected");
      setState(() {
        selectedImage3 = File(image.path);
        base64Image = base64Encode(selectedImage3!.readAsBytesSync());
      });
    } else {
      print("Image not sel");
    }
  }

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

  String dropdownvalue = 'New connection';
  String dropdownvalue1 = 'A1';

  var items = [
    'New connection',
    'inside Light replace',
    'outside Light replace'
  ];
  var items1 = [
    'A1',
    'A2',
    'A3',
  ];
  void showToast1() {
    int toastDurationInMilliSeconds;
    Fluttertoast.showToast(
        msg: 'Please Choose your',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 60,
        backgroundColor: Colors.red,
        textColor: Colors.yellow);
  }

  void showToast() {
    int toastDurationInMilliSeconds;
    Fluttertoast.showToast(
        msg: 'This is toast notification',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 60,
        backgroundColor: Colors.red,
        textColor: Colors.yellow);
  }

  void showToast12() {
    Fluttertoast.showToast(
        msg: 'Selected Images',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.yellow);
  }

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    var ScreenSize = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_outlined,
                color: Color(0xff09618E),
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
        title: Text('profile',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              color: Color(0xff09618E),
              fontFamily: 'bold',
            )),
        leadingWidth: 50,
        backgroundColor: Colors.white,
        elevation: 2,
        foregroundColor: Colors.white,
        titleSpacing: -10,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  // color: Colors.amber,
                  // height: ScreenSize.size.height * 0.06,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          // height: ScreenSize.size.height * 0.05,
                          width: ScreenSize.size.width * 0.20,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff0060AF),
                                // side:
                                //     BorderSide(color: Colors.white, width: 1),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0))),
                            child: Text(
                              "Edit",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w300,
                                color: Color(0xffFFFFFF),
                                fontFamily: 'Inter',
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Updateprofile()),
                              );
                              // showDialog(
                              //     useRootNavigator: true,
                              //     context: context,
                              //     builder: (BuildContext context) {
                              //       return ElectricSuccesfuly();
                              //     });
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) =>
                              //           const ElectricSuccesfuly(),
                              //       maintainState: true),
                              // );
                            },
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
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
            Dialog(
              insetPadding: EdgeInsets.fromLTRB(1, 25, 1, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(9),
              ),
              elevation: 10,
              child: Container(
                // color: Colors.redAccent,
                width: ScreenSize.size.width * 0.94,
                // color: Colors.green,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(children: [
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: ScreenSize.size.height * 0.02,
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
                                      color: Colors.white,
                                      width: ScreenSize.size.width * 0.94,
                                      // height: ScreenSize.size.height * 0.12,
                                      // color: Colors.amber,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Container(
                                                // color: Colors.amber,
                                                // width: ScreenSize.size.width *
                                                //     0.30,
                                                child: Column(
                                                  children: [
                                                    CircleAvatar(
                                                      backgroundColor:
                                                          Color.fromARGB(255,
                                                              234, 208, 131),
                                                      radius: 35,
                                                      child: Icon(Icons.person),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height:
                                                ScreenSize.size.height * 0.03,
                                          ),
                                          Container(
                                            width: ScreenSize.size.width * 0.94,
                                            color: Colors.white,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  "  Name      ",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    color: Color.fromARGB(
                                                        255, 73, 150, 188),
                                                    fontFamily: 'Inter',
                                                  ),
                                                ),
                                                Container(
                                                    // color: Colors.green,
                                                    width:
                                                        ScreenSize.size.width *
                                                            0.30,
                                                    // height: ScreenSize.size.height * 0.03,
                                                    child: Text(
                                                      "Rakesh ranjan",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Color.fromARGB(
                                                            255, 73, 150, 188),
                                                        fontFamily: 'Inter',
                                                      ),
                                                      textAlign:
                                                          TextAlign.justify,
                                                    )),
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

                      // Text(
                    ]),
                    SizedBox(
                      height: ScreenSize.size.height * 0.03,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        color: Colors.white,
                        width: ScreenSize.size.width * 0.94,
                        child: Row(
                          children: [
                            SizedBox(
                              width: ScreenSize.size.width * 0.23,
                            ),
                            Text(
                              " Email       ",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 73, 150, 188),
                                fontFamily: 'Inter',
                              ),
                            ),
                            Container(
                                // color: Colors.green,
                                width: ScreenSize.size.width * 0.52,
                                // height: ScreenSize.size.height * 0.10,
                                child: Text(
                                  "Rakesh12@gmail.com",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromARGB(255, 73, 150, 188),
                                    fontFamily: 'Inter',
                                  ),
                                  textAlign: TextAlign.justify,
                                )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: ScreenSize.size.height * 0.03,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 00.0),
                        child: Container(
                          // color: Colors.redAccent,
                          width: ScreenSize.size.width * 0.94,
                          child: Row(
                            children: [
                              SizedBox(
                                width: ScreenSize.size.width * 0.24,
                              ),
                              Text(
                                "Mobile     ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 73, 150, 188),
                                  fontFamily: 'Inter',
                                ),
                              ),
                              Container(
                                  // color: Colors.green,
                                  width: ScreenSize.size.width * 0.35,
                                  // height: ScreenSize.size.height * 0.03,
                                  child: Text(
                                    "8234075748",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromARGB(255, 73, 150, 188),
                                      fontFamily: 'Inter',
                                    ),
                                    textAlign: TextAlign.justify,
                                  )),
                            ],
                          ),
                        )),
                    SizedBox(
                      height: ScreenSize.size.height * 0.04,
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Container(
                    //       // color: Colors.amber,
                    //       // height: ScreenSize.size.height * 0.06,
                    //       child: Column(
                    //         mainAxisAlignment: MainAxisAlignment.end,
                    //         children: [
                    //           Container(
                    //               // height: ScreenSize.size.height * 0.05,
                    //               // width: ScreenSize.size.width * 0.33,
                    //               child: ElevatedButton(
                    //             style: ElevatedButton.styleFrom(
                    //                 primary: Color(0xff0060AF),
                    //                 // side:
                    //                 //     BorderSide(color: Colors.white, width: 1),
                    //                 shape: RoundedRectangleBorder(
                    //                     borderRadius:
                    //                         BorderRadius.circular(4.0))),
                    //             child: Text(
                    //               "Edit",
                    //               style: TextStyle(
                    //                 fontSize: 12.0,
                    //                 fontWeight: FontWeight.w300,
                    //                 color: Color(0xffFFFFFF),
                    //                 fontFamily: 'Inter',
                    //               ),
                    //             ),
                    //             onPressed: () {
                    //               // Navigator.pushNamed(
                    //               //     context, '/ElectricSuccesfuly');
                    //               showDialog(
                    //                   useRootNavigator: true,
                    //                   context: context,
                    //                   builder: (BuildContext context) {
                    //                     return ElectricSuccesfuly();
                    //                   });
                    //               // Navigator.push(
                    //               //   context,
                    //               //   MaterialPageRoute(
                    //               //       builder: (context) =>
                    //               //           const ElectricSuccesfuly(),
                    //               //       maintainState: true),
                    //               // );
                    //             },
                    //           ))
                    //         ],
                    //       ),
                    //     )
                    //   ],
                    // ),
                    SizedBox(
                      height: ScreenSize.size.height * 0.01,
                    ),
                  ],
                ),
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
