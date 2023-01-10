// import 'dart:convert';
// import 'dart:io';
// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:http/http.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:omkarreal_application_123/Cleaning/CleaningSuccesful.dart';
// import 'package:omkarreal_application_123/Drawer.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:http/http.dart ' as http;

// class Cleaning extends StatefulWidget {
//   GlobalKey<FormState> formkey = GlobalKey<FormState>();

//   // final int web;
//   // Cleaning(this.web);

//   @override
//   State<Cleaning> createState() => _CleaningState();
// }

// class _CleaningState extends State<Cleaning> {
//   final formkey = GlobalKey<FormState>();
//   String check = 'Notification Form';
//   File? selectedImage1;
//   File? selectedImage2;
//   File? selectedImage3;
//   String base64Image = " ";

//   Future<void> chooseImage(type) async {
//     var image;
//     if (type == 'camera') {
//       image = await ImagePicker().pickImage(
//         source: ImageSource.camera,
//       );
//     } else {
//       image = await ImagePicker().pickImage(
//         source: ImageSource.gallery,
//       );
//     }
//     if (image != null) {
//       setState(() {
//         selectedImage1 = File(image.path);
//         base64Image = base64Encode(selectedImage1!.readAsBytesSync());
//       });
//     }
//   }

//   Future<void> chooseImage1(type) async {
//     var image;
//     if (type == 'camera') {
//       image = await ImagePicker().pickImage(
//         source: ImageSource.camera,
//       );
//     } else {
//       image = await ImagePicker().pickImage(
//         source: ImageSource.gallery,
//       );
//     }
//     if (image != null) {
//       setState(() {
//         selectedImage2 = File(image.path);
//         base64Image = base64Encode(selectedImage2!.readAsBytesSync());
//       });
//     }
//   }

//   Future<void> chooseImage2(type) async {
//     var image;
//     if (type == 'camera') {
//       image = await ImagePicker().pickImage(
//         source: ImageSource.camera,
//       );
//     } else {
//       image = await ImagePicker().pickImage(
//         source: ImageSource.gallery,
//       );
//     }
//     if (image != null) {
//       print("Selected");
//       setState(() {
//         selectedImage3 = File(image.path);

//         base64Image = base64Encode(selectedImage3!.readAsBytesSync());
//       });
//     } else {
//       print("Image not sel");
//     }
//   }

//   var getValue;
//   String text = " ";


//   TextEditingController sub_service_uid = TextEditingController();
//   TextEditingController service_request_datetime = TextEditingController();
//   TextEditingController description = TextEditingController();
//     TextEditingController gala_uid = TextEditingController();
//   final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  

//   final myController = TextEditingController();
//   @override
//   void dispose() {
//     textController.dispose();
//     super.dispose();
//   }

//   void showToast1() {
//     int toastDurationInMilliSeconds;
//     Fluttertoast.showToast(
//         msg: 'Please Choose your',
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.BOTTOM,
//         timeInSecForIosWeb: 60,
//         backgroundColor: Colors.red,
//         textColor: Colors.yellow);
//   }

//   void showToast() {
//     int toastDurationInMilliSeconds;
//     Fluttertoast.showToast(
//         msg: 'This is toast notification',
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.BOTTOM,
//         timeInSecForIosWeb: 60,
//         backgroundColor: Colors.red,
//         textColor: Colors.yellow);
//   }

//   void showToast12() {
//     Fluttertoast.showToast(
//         msg: 'Selected Images',
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.BOTTOM,
//         timeInSecForIosWeb: 1,
//         backgroundColor: Colors.red,
//         textColor: Colors.yellow);
//   }

//   TextEditingController textController = TextEditingController();

//   Future<Radio?> FeedBack(
//     String sub_service_uid,
//     service_request_datetime,
//     description,
//     gala_uid,
//     // third_image,
//     // length,
//   ) async {
//     try {
//       var uri = Uri.parse(
//           'http://192.168.0.121:8000/service-api/post-service-request/');
//       var request = http.MultipartRequest('POST', uri);
//       // request.headers.addAll({
//       //   'Accept': 'application/json',
//       //   'Authorization':
//       //       'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiYTZiMmJmMzdiMWNkNDZmZjA1NzM1ZWI3MWQ3Yjc3NWFkYmNkZWRhY2E1NDBkNGZkZWI3NWNhOGRhN2JlZDNiMTAzMzFmMzgyYTg1NTY5OTciLCJpYXQiOjE2NjkyMTAwMDMuNzQ2MTMxODk2OTcyNjU2MjUsIm5iZiI6MTY2OTIxMDAwMy43NDYxMzQwNDI3Mzk4NjgxNjQwNjI1LCJleHAiOjE3MDA3NDYwMDMuNzQ0NDUzOTA3MDEyOTM5NDUzMTI1LCJzdWIiOiIxNTkiLCJzY29wZXMiOltdfQ.UWi7Pd6OILH2jRv_d1ytWY84qrY8Pli05zeRZgC0yMRtfEAPxeehO3OmWH8EK4D-owJzJFaWBdMmWiHC5fLpRQJam6FKUqmRlBx6kUpleS-Tj3eqiFY40bvD0Q2BSy8qaXdKUA1ujQiFoO_0SzyxF4sXCha7kwkgk6cBmxdGd27TGAlCYsh2vBQ0TFeEz1Bfbe6awUCZbiCBaR7QWQ5DyS2SsH0DnOW4jKdZf6sfWwF-bCfLG1vcLcjx1I06JXNAf-Aqfe3CZMe_lPeqFnba7WfWtYMcbX1ZE_2T2XrhPBqu4PPNqMiFu_J-Ev2ktVmMV8h-O59COUga-SjL43eXPTg5sFgNKjmjuFDjy1zTwdoj7kx7whL9BtMOLxFnFRRCNwKixVOFHBAsx-uRK7g6qm7tD9fdg72W2oyDBYadbIVLjHb-iye_L80cqjZox8o7o_IGGLkR5vvAV_tyj2pQ9MxklHQzR3p8et41L-im-tr1TUa3xOcLPUkEog6TuPvgHIBc9YqTMkNtjkBxWtN5ChTV-UHRWWr42L4Gd2Tro2ExN3_imfR5Q2bHBGBmUUwFcR8BDbPoebVod8xVFw8hmYWrVMwqjg9ueKTN4PxMnIkqZ7tORWSnZRtKxxOvESr5wvx07faeg6x5-y-LDpS7zcya1InotS8lW89Giev5N_I',
//       //   "contentType": 'charset=UTF-8',
//       //   "Accept": "application/json"
//       // });
//       request.fields['sub_service_uid'] = sub_service_uid;
//       request.fields['service_request_datetime'] = service_request_datetime;
//       request.fields['description'] = description;
//       request.fields['gala_uid'] = gala_uid;
//       // print("helo this is a child id ...$web");
//       // request.fields['problem'] = problem;
//       // request.fields['child_id'] = web;
//       // // request.fields['first_image'] = first_image.path;
//       // // request.fields['second_image'] = second_image.path;
//       // // request.fields['third_image'] = third_image.path;

//       // print(first_image.runtimeType);

//       // request.files.add(await http.MultipartFile.fromPath(
//       //     'first_image', first_image.path,
//       //     contentType: MediaType(first_image.path.split(".").last,
//       //         first_image.path.split("/").last)));
//       // request.files.add(await http.MultipartFile.fromPath(
//       //     'second_image', second_image.path,
//       //     contentType: MediaType(first_image.path.split(".").last,
//       //         first_image.path.split("/").last)));
//       // request.files.add(await http.MultipartFile.fromPath(
//       //     'third_image', third_image.path,
//       //     contentType: MediaType(first_image.path.split(".").last,
//       //         first_image.path.split("/").last)));

//       var response = await request.send();
//       //  var response = await http.post(uri);
//       // print(response);
//       //  print("shriom ${widget.web.toString()} response ${response.body}");
//       //  var data = jsonDecode(response.headers.toString());

//       // http.StreamedResponse response = await request.send();
//       var responsed = await http.Response.fromStream(response);
//       final Responsedata = json.decode(responsed.body);
//       if (response.statusCode == 200) {
//         // print(request.fields);
//         print(responsed);
//         print(Responsedata);
//       } else {
//         print("error");
//       }
//     } catch (err) {
//       print(err);
//       return null;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final double height = MediaQuery.of(context).size.height;
//     final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
//     var ScreenSize = MediaQuery.of(context);
//     return SafeArea(
//       child: Scaffold(
//         resizeToAvoidBottomInset: false,
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           elevation: 0.9,
//           automaticallyImplyLeading: false,
//           leading: IconButton(
//             onPressed: () {
//               Navigator.pop(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => Drawer1(), maintainState: false),
//               );
//             },
//             icon: Icon(Icons.arrow_back_ios),
//             color: Color(0xff6790D3),
//           ),
//           title: Text(
//             "ADD TICKET",
//             style: TextStyle(
//               fontSize: 20.0,
//               fontWeight: FontWeight.w600,
//               color: Color(0xff6790D3),
//               fontFamily: 'Montserrat Alternates',
//             ),
//           ),
//           titleSpacing: -11,
//         ),
//         body: Container(
//           height: ScreenSize.size.height,
//           width: ScreenSize.size.width,
//           child: SingleChildScrollView(
//             scrollDirection: Axis.vertical,
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Container(
//                       width: ScreenSize.size.width,
//                       child: ListTile(
//                         enableFeedback: true,
//                         enabled: true,
//                         dense: true,
//                         tileColor: Colors.white,
//                         leading: Container(
//                           // color: Colors.amber,
//                           width: ScreenSize.size.width * 0.60,
//                           child: Text(
//                             "Please choose babies",
//                             style: TextStyle(
//                               fontSize: 15.0,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.black,
//                               fontFamily: 'Montserrat Alternates',
//                             ),
//                           ),
//                         ),
//                         onTap: (() {
//                           // showToast();
//                           // _SuccessMessage6(context);
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => CleaningSuccesfuly(),
//                               // maintainState: false
//                             ),
//                           );
//                         }),
//                         trailing: Container(
//                           width: ScreenSize.size.width * 0.42,
//                           // color: Colors.green,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               SizedBox(
//                                 width: ScreenSize.size.width * 0.01,
//                               ),
//                               Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   // Row(
//                                   //   mainAxisAlignment: MainAxisAlignment.center,
//                                   //   children: [
//                                   //     Container(
//                                   //       child: CircleAvatar(
//                                   //         child: Image.asset(
//                                   //             "assest/images/nasta.jpg"),
//                                   //       ),
//                                   //     ),
//                                   //     Container(
//                                   //       //  color: Colors.red,
//                                   //       width: ScreenSize.size.width * 0.22,
//                                   //       child: const Text(
//                                   //         "Notification Form ",
//                                   //         style: TextStyle(
//                                   //           fontSize: 8.0,
//                                   //           fontWeight: FontWeight.w300,
//                                   //           color: Colors.black,
//                                   //           fontFamily: 'Montserrat Alternates',
//                                   //         ),
//                                   //         textAlign: TextAlign.end,
//                                   //         maxLines: 1,
//                                   //         overflow: TextOverflow.ellipsis,
//                                   //       ),
//                                   //     ),
//                                   //   ],
//                                   // ),
//                                 ],
//                               ),
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.end,
//                                 children: [
//                                   Container(
//                                     width: ScreenSize.size.width * 0.07,
//                                     child: GestureDetector(
//                                       child: IconButton(
//                                         onPressed: () {
//                                           _SuccessMessage(context);
//                                           Navigator.push(context,
//                                               MaterialPageRoute(
//                                                   builder: ((context) {
//                                             return CleaningSuccesfuly();
//                                           })));
//                                         },
//                                         icon: Icon(
//                                           Icons.arrow_forward_ios,
//                                           color: Colors.grey,
//                                         ),
//                                         iconSize: 20,
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Container(
//                   color: Color.fromARGB(255, 241, 240, 234),
//                   height: ScreenSize.size.height * 0.009,
//                 ),
//                 Container(
//                   height: ScreenSize.size.height * 0.05,
//                   color: Colors.white,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                         //   color: Colors.amber,
//                         // height: ScreenSize.size.height * 0.05,
//                         width: ScreenSize.size.width * 0.96,
//                         child: Row(
//                           children: [
//                             Text(
//                               "Hello, Please type your feedback",
//                               style: TextStyle(
//                                 fontSize: 16.0,
//                                 fontWeight: FontWeight.w600,
//                                 color: Colors.black,
//                                 fontFamily: 'Montserrat Alternates',
//                               ),
//                               textAlign: TextAlign.start,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: ScreenSize.size.height * 0.006,
//                 ),
//                 Container(
//                   // color: Colors.grey[300],
//                   width: ScreenSize.size.width * 0.95,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(8.0),
//                           topRight: Radius.circular(8.0),
//                           bottomLeft: Radius.circular(8.0),
//                           bottomRight: Radius.circular(8.0)),
//                       // color: Color.fromARGB(255, 247, 237, 231),
//                       color: Colors.grey[300]),
//                   // height:  ScreenSize.size.height*0.20,
//                   child: Padding(
//                     padding: const EdgeInsets.all(4.0),
//                     child: Form(
//                       key: _formkey,
//                       child: Column(
//                         children: [
//                           TextFormField(
//                             onChanged: ((value) {
//                               setState(() {
//                                 text = value;
//                                 // print(text);
//                               });
//                             }),
//                             controller: textController,
//                             validator: (String? value) {
//                               if (value == null || value.trim().length == 0) {
//                                 return "";
//                               }
//                               return null;
//                             },
//                             // minLines: 5,
//                             maxLines: 5,
//                             decoration: InputDecoration(
//                               hintText: "We'd love to hear your feedback :)",
//                               hintStyle: TextStyle(
//                                 fontSize: 15.0,
//                                 fontWeight: FontWeight.w600,
//                                 color: Color(0xff818181),
//                                 fontFamily: 'Montserrat Alternates',
//                               ),
//                               border: InputBorder.none,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   height: ScreenSize.size.height * 0.05,
//                   color: Colors.white,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                         // color: Colors.amber,
//                         height: ScreenSize.size.height * 0.05,
//                         width: ScreenSize.size.width * 0.96,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Upload Screenshots",
//                               style: TextStyle(
//                                 fontSize: 16.0,
//                                 fontWeight: FontWeight.w600,
//                                 color: Colors.black,
//                                 fontFamily: 'Montserrat Alternates',
//                               ),
//                               textAlign: TextAlign.start,
//                             ),
//                             Text(
//                               "(optional)",
//                               style: TextStyle(
//                                 fontSize: 16.0,
//                                 fontWeight: FontWeight.w600,
//                                 color: Color(0xff818181),
//                                 fontFamily: 'Montserrat Alternates',
//                               ),
//                               textAlign: TextAlign.start,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: ScreenSize.size.height * 0.006,
//                 ),
//                 Container(
//                   color: Colors.white,
//                   width: ScreenSize.size.width * 0.98,
//                   // height:  ScreenSize.size.height*0.20,
//                   child: GestureDetector(
//                     onTap: () {
//                       //  Navigator.push(
//                       //     context,
//                       //     MaterialPageRoute(
//                       //       builder: (context) =>HomePage123(),
//                       //     ));
//                     },
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         GestureDetector(
//                           onTap: () {
//                             chooseImage('Gallery');
//                           },
//                           child: Container(
//                             height: ScreenSize.size.height * 0.18,
//                             width: ScreenSize.size.width * 0.28,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.only(
//                                     topLeft: Radius.circular(8.0),
//                                     topRight: Radius.circular(8.0),
//                                     bottomLeft: Radius.circular(8.0),
//                                     bottomRight: Radius.circular(8.0)),
//                                 // color: Color.fromARGB(255, 247, 237, 231),
//                                 color: Colors.grey[300]),
//                             child: selectedImage1 != null
//                                 ? Image.file(
//                                     selectedImage1!,
//                                     fit: BoxFit.cover,
//                                     height: 100,
//                                     width: 100,
//                                   )
//                                 : Container(
//                                     child: IconButton(
//                                         onPressed: () {
//                                           chooseImage('Gallery');
//                                         },
//                                         icon: Icon(Icons.add_photo_alternate),
//                                         iconSize: 40,
//                                         color: Colors.white),
//                                   ),
//                           ),
//                         ),
//                         GestureDetector(
//                           onTap: () {
//                             chooseImage1('Gallery');
//                           },
//                           child: Container(
//                             height: ScreenSize.size.height * 0.18,
//                             width: ScreenSize.size.width * 0.28,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.only(
//                                     topLeft: Radius.circular(8.0),
//                                     topRight: Radius.circular(8.0),
//                                     bottomLeft: Radius.circular(8.0),
//                                     bottomRight: Radius.circular(8.0)),

//                                 // color: Color.fromARGB(255, 247, 237, 231),
//                                 color: Colors.grey[300]),
//                             child: selectedImage2 != null
//                                 ? Image.file(
//                                     selectedImage2!,
//                                     fit: BoxFit.cover,
//                                     // height: 100,
//                                     // width: 100,
//                                   )
//                                 : Container(
//                                     decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.only(
//                                             topLeft: Radius.circular(8.0),
//                                             topRight: Radius.circular(8.0),
//                                             bottomLeft: Radius.circular(8.0),
//                                             bottomRight: Radius.circular(8.0)),
//                                         // color: Color.fromARGB(255, 247, 237, 231),
//                                         color: Colors.grey[300]),
//                                     child: IconButton(
//                                         onPressed: () {
//                                           chooseImage1('Gallery');
//                                         },
//                                         icon: Icon(Icons.add_photo_alternate),
//                                         iconSize: 40,
//                                         color: Colors.white),
//                                   ),
//                           ),
//                         ),
//                         GestureDetector(
//                           onTap: () {
//                             chooseImage2('Gallery');
//                           },
//                           child: Container(
//                             height: ScreenSize.size.height * 0.18,
//                             width: ScreenSize.size.width * 0.28,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.only(
//                                     topLeft: Radius.circular(8.0),
//                                     topRight: Radius.circular(8.0),
//                                     bottomLeft: Radius.circular(8.0),
//                                     bottomRight: Radius.circular(8.0)),
//                                 // color: Color.fromARGB(255, 247, 237, 231),
//                                 color: Colors.grey[300]),
//                             child: selectedImage3 != null
//                                 ? Image.file(
//                                     selectedImage3!,
//                                     fit: BoxFit.cover,
//                                     height: 100,
//                                     width: 100,
//                                   )
//                                 : Container(
//                                     child: IconButton(
//                                         onPressed: () {
//                                           chooseImage2('Gallery');
//                                         },
//                                         icon: Icon(Icons.add_photo_alternate),
//                                         iconSize: 40,
//                                         color: Colors.white),
//                                   ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: ScreenSize.size.height * 0.03,
//                 ),
//                 Container(
//                   //  color: Colors.amber,
//                   height: ScreenSize.size.height * 0.19,
//                   width: ScreenSize.size.width * 0.93,
//                   child: Text(
//                     "Latent because the topics are hidden. We have a bunch of texts and we want the algorithm to put them into clusters that will make sense to us. For example, if our text data come from news content.",
//                     style: TextStyle(
//                       fontSize: 13.0,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.black,
//                       fontFamily: 'Montserrat Alternates',
//                     ),
//                     textAlign: TextAlign.justify,
//                     maxLines: 6,
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                 ),
//                 Container(
//                   // color: Colors.amber,
//                   width: ScreenSize.size.width * 0.53,
//                   child: Column(
//                     children: <Widget>[
//                       GestureDetector(
//                         onTap: () {
//                           //     Future uploadImage() async {
//                           //       final uri = Uri.parse(
//                           //           "https://infograinsdevelopment.com/Littlest-Precious/api/send-message-ticket");
//                           //       var request = http.MultipartRequest('POST', uri);
//                           // request.files.add(new http.MultipartFile.fromBytes(
//                           //     "file", Image.));

//                           //        var takenPicture = await http.MultipartFile.fromPath("image", Image.file(selectedImage1!).toString(),);
//                           // request.files.add(takenPicture);

//                           //       var response = await request.send();
//                           //       if (response.statusCode == 200) {
//                           //         print('Image uploaded!');
//                           //       } else {
//                           //         print('Image not uploaded');
//                           //       }
//                           //     }

//                           // _SuccessMessage(context);
//                           //  showToast();
//                           validatetext("");
//                         },
//                         child: Container(
//                           alignment: Alignment.center,
//                           //  height: ScreenSize.size.height * 0.10,
//                           width: ScreenSize.size.width * 0.55,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(50),
//                             color: Colors.green,
//                           ),
//                           child: Padding(
//                             padding: EdgeInsets.all(8.0),
//                             child: Text(
//                               'Send ',
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontFamily: 'Montserrat Alternates',
//                                   fontWeight: FontWeight.w600,
//                                   fontSize: 20),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   void validatetext(String val) {
//     if (_formkey.currentState != null && _formkey.currentState!.validate()) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//             builder: (context) => CleaningSuccesfuly(), maintainState: true),
//       );
//       print("ok");
//       // print("validate");
//       // _SuccessMessage7(context);
//     } else {
//       print("error");
//       if (!_formkey.currentState!.validate()) {
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//           duration: const Duration(seconds: 2),
//           content: const Text(
//             'Your Child Feedback Is Requried',
//             style: TextStyle(
//               fontSize: 17.0,
//               fontWeight: FontWeight.w300,
//               color: Color(0xff6790D3),
//               fontFamily: 'Montserrat Alternates',
//             ),
//             textAlign: TextAlign.center,
//           ),
//           backgroundColor: Color(0xffFFFFFF),
//           behavior: SnackBarBehavior.fixed,
//           // elevation: 15,
//         ));
//       }
//     }
//     FeedBack(
//  textController.text.toString(),
//  textController.text.toString(),
//  textController.text.toString(),
//  textController.text.toString(),  
//     );
//   }

//   _SuccessMessage2(BuildContext context) {
//     return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//       duration: const Duration(seconds: 2),
//       content: Container(
//         child: Text(
//           "Please Write Feedback Your Child",
//           textAlign: TextAlign.center,
//         ),
//         padding: const EdgeInsets.all(8),
//         height: 40,
//         decoration: const BoxDecoration(
//             color: Colors.blue,
//             borderRadius: BorderRadius.all(Radius.circular(10))),
//       ),
//       backgroundColor: Colors.transparent,
//       behavior: SnackBarBehavior.floating,
//       elevation: 0,
//     ));
//   }

//   _SuccessMessage6(BuildContext context) {
//     return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//       duration: const Duration(seconds: 2),
//       content: Container(
//         child: Text(
//           "Please Select Your Child Account...",
//           textAlign: TextAlign.center,
//         ),
//         padding: const EdgeInsets.all(8),
//         height: 40,
//         decoration: const BoxDecoration(
//             color: Colors.blue,
//             borderRadius: BorderRadius.all(Radius.circular(10))),
//       ),
//       backgroundColor: Colors.transparent,
//       behavior: SnackBarBehavior.floating,
//       elevation: 0,
//     ));
//   }

//   _SuccessMessage7(BuildContext context) {
//     return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//       duration: const Duration(seconds: 2),
//       content: Container(
//         child: Text(
//           "Your Child Feedback History...",
//           textAlign: TextAlign.center,
//         ),
//         padding: const EdgeInsets.all(8),
//         height: 40,
//         decoration: const BoxDecoration(
//             color: Colors.blue,
//             borderRadius: BorderRadius.all(Radius.circular(10))),
//       ),
//       backgroundColor: Colors.transparent,
//       behavior: SnackBarBehavior.floating,
//       elevation: 0,
//     ));
//   }

//   _SuccessMessage8(BuildContext context) {
//     return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//       duration: const Duration(seconds: 2),
//       content: Container(
//         child: Text(
//           "Please Select Your Child Image...",
//           textAlign: TextAlign.center,
//         ),
//         padding: const EdgeInsets.all(8),
//         height: 40,
//         decoration: const BoxDecoration(
//             color: Colors.blue,
//             borderRadius: BorderRadius.all(Radius.circular(10))),
//       ),
//       backgroundColor: Colors.transparent,
//       behavior: SnackBarBehavior.floating,
//       elevation: 0,
//     ));
//   }

//   _SuccessMessage(BuildContext context) {
//     return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//       duration: const Duration(seconds: 3),
//       content: const Text(
//         'Your Child Feedback Is Requried',
//         style: TextStyle(
//           fontSize: 17.0,
//           fontWeight: FontWeight.w300,
//           color: Color(0xff6790D3),
//           fontFamily: 'Montserrat Alternates',
//         ),
//         textAlign: TextAlign.center,
//       ),
//       backgroundColor: Color(0xffFFFFFF),
//       behavior: SnackBarBehavior.floating,
//       elevation: 0,
//     ));
//   }

//   basename(path, first_image) {}
// }

// MediaType(String s, String t) {}
