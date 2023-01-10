import 'dart:convert';
import 'dart:io';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'dart:convert';
import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';
import 'package:omkarreal_application_123/Cleaning/CleaningSuccesful.dart';
import 'package:omkarreal_application_123/Drawer.dart';
import 'package:omkarreal_application_123/Electrict/ElectrictSuccesfulyPage.dart';
import 'package:omkarreal_application_123/model/ProductModel.dart';
import 'package:omkarreal_application_123/model/clean.dart';
import 'package:path_provider/path_provider.dart';
// import 'package:flutter_application_changesnew2/Cleaning/CleaningSuccesful.dart';
// import 'package:flutter_application_changesnew2/Drawer.dart';
// import 'package:flutter_application_changesnew2/Electrict/ElectrictSuccesfulyPage.dart';
// import 'package:flutter_application_changesnew2/Logout.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';

import '../Drawer.dart';
import 'CleaningSuccesful.dart';

class Cleaning extends StatefulWidget {
  // GlobalKey<FormState> formkey = GlobalKey<FormState>();
  // Cleaning({
  //   Key? key,
  // }) : super(key: rajj);


   final    rajj;
  Cleaning(this.rajj);

  @override
  State<Cleaning> createState() => _CleaningState();
}

class _CleaningState extends State<Cleaning> {
  // final formkey = GlobalKey<FormState>();
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
    // String hintText = "data uhuwh";

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

  TextEditingController sub_service_uid = TextEditingController();
  TextEditingController service_request_datetime = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController gala_uid = TextEditingController();
  // final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  final myController = TextEditingController();
  late int selectedRadio;

  var rana;
  Future<Radio?> FeedBack(
    String sub_service_uid,
    service_request_datetime,
    description,
    gala_uid,
  ) async {
    try {
     
      var uri = Uri.parse(
          'http://192.168.0.121:8000/service-api/post-service-request/');
      var request = http.MultipartRequest('POST', uri);
      request.fields['sub_service_uid'] = "0383b9d7-245c-44b7-bc7f-1af23141a78e";
      request.fields['service_request_datetime'] = "2022-11-30 08:42";
      request.fields['description'] = "Hello World!";
      request.fields['gala_uid'] = "9158a9e2-f9a0-424c-a406-6bb9c45ed701";

      var response = await request.send();
      var responsed = await http.Response.fromStream(response);
      final Responsedata = json.decode(responsed.body);
      // print(Responsedata);
  
      if (response.statusCode == 201) {
    rana = Responsedata;
    // print("hello raj ki sadi ${rana}");
        // print(request.fields);
          // print("hello raj ho ${rajj}");
    
                                      // Navigator.pushNamed(
                                      //     context, '/ElectricSuccesfuly');
                                      showDialog(
                                          useRootNavigator: true,
                                          context: context,
                                          builder: (BuildContext context) {
                                            return CleaningSuccesfuly(rana);
                                          });
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //       builder: (context) =>
                                      //           const ElectricSuccesfuly(),
                                      //       maintainState: true),
                                      // );
                            



       print(data['response']['services'][0]['sub_service_name']);
        print(Responsedata);
      } else {
        print("error");
      }
    } catch (err) {
      print(err);
      return null;
    }
  }

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

  TextEditingController textController = TextEditingController();

  String hintText = "data uhuwh";
  String dropdownvalue = data['response']['services'][0]['sub_service_name'];
  String dropdownvalue1 =   data['response']['rental-gala'][0]['gala__uid'];
  String? selectedValue1;
  String? selectedValue2;
  var items = [
    data['response']['services'][0]['sub_service_name'],
    data['response']['services'][1]['sub_service_name'],
    // 'Wash room cleaning',
    // 'Racking or floor cleaning',
    // 'Outside road cleaning'
  ];
  var items1 = [
    data['response']['rental-gala'][0]['gala__uid'],
     data['response']['rental-gala'][1]['gala__uid'],
    data['response']['rental-gala'][2]['gala__uid'],
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

  final formkey = GlobalKey<FormState>();
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    // final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
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
        title: Text('Cleaning',
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
        child: Form(
          key: formkey,
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
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                                                  height:
                                                      ScreenSize.size.height *
                                                          0.04,
                                                  width: ScreenSize.size.width *
                                                      0.63,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Color(
                                                              0xff0060AF)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            1.0),
                                                    child:
                                                        DropdownButtonHideUnderline(
                                                      child: ButtonTheme(
                                                        alignedDropdown: true,
                                                        child: DropdownButton2(
                                                          isExpanded: true,
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
                                                                    value:
                                                                        items,
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
                                                                  value
                                                                      as String;
                                                            });
                                                          },
                                                          itemPadding:
                                                              EdgeInsets.only(
                                                                  left: 2),
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
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                                                  height:
                                                      ScreenSize.size.height *
                                                          0.04,
                                                  width: ScreenSize.size.width *
                                                      0.63,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Color(
                                                              0xff0060AF)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            2.0),
                                                    child:
                                                        DropdownButtonHideUnderline(
                                                      child: DropdownButton2(
                                                        isExpanded: true,
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
                                                                        // overflow: TextOverflow.ellipsis,
                                                                        // overflow: TextOverflow.ellipsis
                                                                        // maxLines: 1,
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
                                                                left: 30 ,),
                                                        // buttonHeight: 40,
                                                        // buttonWidth: 140,
                                                        // itemHeight: 40,
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
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                // color: Colors.amber,
                                height: ScreenSize.size.height * 0.06,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Date Time:-",
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
                              ),
                              SizedBox(
                                width: ScreenSize.size.width * 0.04,
                              ),
                              Container(
                                width: ScreenSize.size.width * 0.6,
                                child: DateTimePicker(
                                  initialDate: null,
                                  initialTime: null,
                                  type: DateTimePickerType.dateTimeSeparate,
                                  dateMask: 'd MMM, yyyy',
                                  initialValue: null,
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(2100),
                                  dateLabelText: 'Date',
                                  timeLabelText: "Time",
                                  selectableDayPredicate: (date) {
                                    // Disable weekend days to select from the calendar
                                    if (date.weekday == 6 ||
                                        date.weekday == 7) {
                                        
                                      return true;
                                    }

                                    return true;
                                  },
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
                        ],
                      ),
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
                                                bottomLeft:
                                                    Radius.circular(8.0),
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
                                                bottomLeft:
                                                    Radius.circular(8.0),
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
                                                    borderRadius: BorderRadius
                                                        .only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    8.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    8.0),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    8.0),
                                                            bottomRight: Radius
                                                                .circular(8.0)),
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
                                                bottomLeft:
                                                    Radius.circular(8.0),
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
                                  validate();
                                  // showDialog(
                                  //     useRootNavigator: true,
                                  //     context: context,
                                  //     builder: (BuildContext context) {
                                  //       return CleaningSuccesfuly();
                                  //     });

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
      ),
    ));
  }

  Future<void> validate() async {
    if (formkey.currentState!.validate()) {
      FeedBack(
        sub_service_uid.text.toString(),
        service_request_datetime.text.toString(),
        description.text.toString(),
        gala_uid.text.toString(),
      );
    } else {
      print("error");
    }
    return null;
  }
}

// Future<Clean1?> FeedBack(
//   String sub_service_uid,
//   service_request_datetime,
//   description,
//   gala_uid,
// ) async {
//   try {
//     var uri = Uri.parse(
//         'http://192.168.0.121:8000/service-api/post-service-request/');
//     var request = http.MultipartRequest('POST', uri);
//     // request.headers.addAll({
//     //   'Accept': 'application/json',
//     //   'Authorization':
//     //       'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiYTZiMmJmMzdiMWNkNDZmZjA1NzM1ZWI3MWQ3Yjc3NWFkYmNkZWRhY2E1NDBkNGZkZWI3NWNhOGRhN2JlZDNiMTAzMzFmMzgyYTg1NTY5OTciLCJpYXQiOjE2NjkyMTAwMDMuNzQ2MTMxODk2OTcyNjU2MjUsIm5iZiI6MTY2OTIxMDAwMy43NDYxMzQwNDI3Mzk4NjgxNjQwNjI1LCJleHAiOjE3MDA3NDYwMDMuNzQ0NDUzOTA3MDEyOTM5NDUzMTI1LCJzdWIiOiIxNTkiLCJzY29wZXMiOltdfQ.UWi7Pd6OILH2jRv_d1ytWY84qrY8Pli05zeRZgC0yMRtfEAPxeehO3OmWH8EK4D-owJzJFaWBdMmWiHC5fLpRQJam6FKUqmRlBx6kUpleS-Tj3eqiFY40bvD0Q2BSy8qaXdKUA1ujQiFoO_0SzyxF4sXCha7kwkgk6cBmxdGd27TGAlCYsh2vBQ0TFeEz1Bfbe6awUCZbiCBaR7QWQ5DyS2SsH0DnOW4jKdZf6sfWwF-bCfLG1vcLcjx1I06JXNAf-Aqfe3CZMe_lPeqFnba7WfWtYMcbX1ZE_2T2XrhPBqu4PPNqMiFu_J-Ev2ktVmMV8h-O59COUga-SjL43eXPTg5sFgNKjmjuFDjy1zTwdoj7kx7whL9BtMOLxFnFRRCNwKixVOFHBAsx-uRK7g6qm7tD9fdg72W2oyDBYadbIVLjHb-iye_L80cqjZox8o7o_IGGLkR5vvAV_tyj2pQ9MxklHQzR3p8et41L-im-tr1TUa3xOcLPUkEog6TuPvgHIBc9YqTMkNtjkBxWtN5ChTV-UHRWWr42L4Gd2Tro2ExN3_imfR5Q2bHBGBmUUwFcR8BDbPoebVod8xVFw8hmYWrVMwqjg9ueKTN4PxMnIkqZ7tORWSnZRtKxxOvESr5wvx07faeg6x5-y-LDpS7zcya1InotS8lW89Giev5N_I',
//     //   "contentType": 'charset=UTF-8',
//     //   "Accept": "application/json"
//     // });
//     request.fields['sub_service_uid'] = sub_service_uid;
//     request.fields['service_request_datetime'] = service_request_datetime;
//     request.fields['description'] = description;
//     request.fields['gala_uid'] = gala_uid;

//     var response = await request.send();
//     var responsed = await http.Response.fromStream(response);
//     final Responsedata = json.decode(responsed.body);
//     if (response.statusCode == 200) {
//       // print(request.fields);
//       print(responsed);
//       print(Responsedata);
//     } else {
//       print("error");
//     }
//   } catch (err) {
//     print(err);
//     return null;
//   }
// }

