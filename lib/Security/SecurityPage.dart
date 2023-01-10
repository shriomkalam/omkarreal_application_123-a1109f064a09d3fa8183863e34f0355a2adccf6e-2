import 'dart:convert';
import 'dart:io';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_application_changesnew2/Drawer.dart';
// import 'package:flutter_application_changesnew2/Electrict/ElectrictSuccesfulyPage.dart';
// import 'package:flutter_application_changesnew2/Logout.dart';
// import 'package:flutter_application_changesnew2/Security/SecuritySuccesfuly.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';

import '../Drawer.dart';
import 'SecuritySuccesfuly.dart';

class Security extends StatefulWidget {
  const Security({super.key});

  @override
  State<Security> createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
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

  String dropdownvalue = '12 hour watch man';
  String dropdownvalue1 = 'A1';
  String? selectedValue1;
  String? selectedValue2;
  var items = [
    '12 hour watch man',
    '24 hour watch man',
    'complaint for watch man'
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
        title: Text('Security',
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
            Dialog(
              insetPadding: EdgeInsets.fromLTRB(6, 25, 6, 50),
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
                            height: ScreenSize.size.height * 0.02,
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
                                      width: ScreenSize.size.width * 0.87,
                                      height: ScreenSize.size.height * 0.12,
                                      // color: Colors.amber,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          // SizedBox(
                                          //   height:
                                          //       ScreenSize.size.height * 0.02,
                                          // ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Text(
                                                "Request:-",
                                                style: TextStyle(
                                                  letterSpacing: 1.2,
                                                  fontSize: 13.0,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.black,
                                                  fontFamily: 'Inter',
                                                ),
                                              ),
                                              // SizedBox(
                                              //   width: ScreenSize.size.width *
                                              //       0.020,
                                              // ),
                                              Container(
                                                height: ScreenSize.size.height *
                                                    0.04,
                                                width: ScreenSize.size.width *
                                                    0.63,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                            Color(0xff0060AF)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6)),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child:
                                                      DropdownButtonHideUnderline(
                                                    child: ButtonTheme(
                                                      alignedDropdown: true,
                                                      child: DropdownButton2(
                                                        hint: Text(
                                                          'Please select Request/complaint',
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              color: Color
                                                                  .fromRGBO(
                                                                      0,
                                                                      96,
                                                                      175,
                                                                      1)),
                                                        ),
                                                        items: items
                                                            .map((items) =>
                                                                DropdownMenuItem<
                                                                    String>(
                                                                  value: items,
                                                                  child: Text(
                                                                    items,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .justify,
                                                                    style: TextStyle(
                                                                        color: Color(
                                                                          0xff0060AF,
                                                                        ),
                                                                        fontSize: 12),
                                                                  ),
                                                                ))
                                                            .toList(),
                                                        value: selectedValue1,
                                                        onChanged: (value) {
                                                          setState(() {
                                                            selectedValue1 =
                                                                value as String;
                                                          });
                                                        },
                                                        itemPadding:
                                                            EdgeInsets.only(
                                                                left: 0),
                                                        // buttonHeight: 40,
                                                        // buttonWidth: 140,
                                                        // itemHeight: 40,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height:
                                                ScreenSize.size.height * 0.02,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Text(
                                                "Gala No:-",
                                                style: TextStyle(
                                                  letterSpacing: 1.2,
                                                  fontSize: 13.0,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.black,
                                                  fontFamily: 'Inter',
                                                ),
                                              ),
                                              // SizedBox(
                                              //   width: ScreenSize.size.width *
                                              //       0.020,
                                              // ),
                                              Container(
                                                height: ScreenSize.size.height *
                                                    0.04,
                                                width: ScreenSize.size.width *
                                                    0.63,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                            Color(0xff0060AF)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6)),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child:
                                                      DropdownButtonHideUnderline(
                                                    child: ButtonTheme(
                                                      alignedDropdown: true,
                                                      child: DropdownButton2(
                                                        hint: Text(
                                                          'Please select gala number',
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              color: Color
                                                                  .fromRGBO(
                                                                      0,
                                                                      96,
                                                                      175,
                                                                      1)),
                                                        ),
                                                        items: items1
                                                            .map((items1) =>
                                                                DropdownMenuItem<
                                                                    String>(
                                                                  value: items1,
                                                                  child: Text(
                                                                    items1,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .justify,
                                                                    style: TextStyle(
                                                                        color: Color(
                                                                          0xff0060AF,
                                                                        ),
                                                                        fontSize: 12),
                                                                  ),
                                                                ))
                                                            .toList(),
                                                        value: selectedValue2,
                                                        onChanged: (value) {
                                                          setState(() {
                                                            selectedValue2 =
                                                                value as String;
                                                          });
                                                        },
                                                        itemPadding:
                                                            EdgeInsets.only(
                                                                left: 5),
                                                        // buttonHeight: 40,
                                                        // buttonWidth: 140,
                                                        // itemHeight: 40,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
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
                    SizedBox(
                      height: ScreenSize.size.height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Row(
                        children: [
                          Text(
                            "Upload\nimages:-",
                            style: TextStyle(
                              letterSpacing: 1.2,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontFamily: 'Inter',
                            ),
                          ),
                          SizedBox(
                            width: ScreenSize.size.width * 0.07,
                          ),
                          Container(
                            color: Colors.white,
                            width: ScreenSize.size.width * 0.60,
                            // height:  ScreenSize.size.height*0.20,
                            child: GestureDetector(
                              onTap: () {
                                //  Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (context) =>HomePage123(),
                                //     ));
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      chooseImage('Gallery');
                                    },
                                    child: Container(
                                      height: ScreenSize.size.height * 0.10,
                                      width: ScreenSize.size.width * 0.15,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(8.0),
                                              topRight: Radius.circular(8.0),
                                              bottomLeft: Radius.circular(8.0),
                                              bottomRight:
                                                  Radius.circular(8.0)),
                                          // color: Color.fromARGB(255, 247, 237, 231),
                                          color: Colors.grey[300]),
                                      child: selectedImage1 != null
                                          ? Image.file(
                                              selectedImage1!,
                                              fit: BoxFit.cover,
                                              height: 100,
                                              width: 100,
                                            )
                                          : Container(
                                              child: IconButton(
                                                  onPressed: () {
                                                    chooseImage('Gallery');
                                                  },
                                                  icon: Icon(Icons
                                                      .add_photo_alternate),
                                                  iconSize: 40,
                                                  color: Colors.white),
                                            ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      chooseImage1('Gallery');
                                    },
                                    child: Container(
                                      height: ScreenSize.size.height * 0.10,
                                      width: ScreenSize.size.width * 0.15,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(8.0),
                                              topRight: Radius.circular(8.0),
                                              bottomLeft: Radius.circular(8.0),
                                              bottomRight:
                                                  Radius.circular(8.0)),

                                          // color: Color.fromARGB(255, 247, 237, 231),
                                          color: Colors.grey[300]),
                                      child: selectedImage2 != null
                                          ? Image.file(
                                              selectedImage2!,
                                              fit: BoxFit.cover,
                                              // height: 100,
                                              // width: 100,
                                            )
                                          : Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft: Radius
                                                              .circular(8.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  8.0),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  8.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  8.0)),
                                                  // color: Color.fromARGB(255, 247, 237, 231),
                                                  color: Colors.grey[300]),
                                              child: IconButton(
                                                  onPressed: () {
                                                    chooseImage1('Gallery');
                                                  },
                                                  icon: Icon(Icons
                                                      .add_photo_alternate),
                                                  iconSize: 40,
                                                  color: Colors.white),
                                            ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      chooseImage2('Gallery');
                                    },
                                    child: Container(
                                      height: ScreenSize.size.height * 0.10,
                                      width: ScreenSize.size.width * 0.15,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(8.0),
                                              topRight: Radius.circular(8.0),
                                              bottomLeft: Radius.circular(8.0),
                                              bottomRight:
                                                  Radius.circular(8.0)),
                                          // color: Color.fromARGB(255, 247, 237, 231),
                                          color: Colors.grey[300]),
                                      child: selectedImage3 != null
                                          ? Image.file(
                                              selectedImage3!,
                                              fit: BoxFit.cover,
                                              height: 100,
                                              width: 100,
                                            )
                                          : Container(
                                              child: IconButton(
                                                  onPressed: () {
                                                    chooseImage2('Gallery');
                                                  },
                                                  icon: Icon(Icons
                                                      .add_photo_alternate),
                                                  iconSize: 40,
                                                  color: Colors.white),
                                            ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: ScreenSize.size.height * 0.00,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Row(
                        children: [
                          Text(
                            "Description:-",
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: ScreenSize.size.width * 0.87,
                          child: ConstrainedBox(
                            //  fit: FlexFit.loose,
                            constraints: BoxConstraints(
                                // maxHeight: height,//when it reach the max it will use scroll
                                // maxWidth: width,
                                ),
                            child: const TextField(
                              keyboardType: TextInputType.multiline,
                              maxLines: null,
                              minLines: 1,
                              decoration: InputDecoration(
                                // fillColor: Colors.blueAccent,
                                filled: true,
                                hintText: "Enter description",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: ScreenSize.size.height * 0.04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            // height: ScreenSize.size.height * 0.05,
                            width: ScreenSize.size.width * 0.36,
                            child: OutlinedButton(
                              onPressed: () {
                                // Navigator.pushNamed(
                                //     context, '/ElectricSuccesfuly');
                                showDialog(
                                    useRootNavigator: true,
                                    context: context,
                                    builder: (BuildContext context) {
                                      return SecuritySuccesfuly();
                                    });
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) =>
                                //           const ElectricSuccesfuly(),
                                //       maintainState: true),
                                // );
                              },
                              child: Text(
                                'Request',
                                style: TextStyle(color: Colors.white),
                              ),
                              style: OutlinedButton.styleFrom(
                                shape: StadiumBorder(),
                                backgroundColor:
                                    Color.fromARGB(255, 30, 113, 197),
                              ),
                            ))
                      ],
                    ),
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
