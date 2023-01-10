// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:flutter/material.dart';
// import 'package:omkar_development/Cleaning/CleaningSuccesful.dart';
// import 'package:omkar_development/Drawer.dart';
// import 'package:omkar_development/Logout.dart';

// import '../customdrawer.dart';

// class Cleaning extends StatefulWidget {
//   const Cleaning({super.key});

//   @override
//   State<Cleaning> createState() => _CleaningState();
// }

// class _CleaningState extends State<Cleaning> {
//   late int selectedRadio;
//   @override
//   void initState() {
//     super.initState();
//     selectedRadio = 0;
//   }

//   setSelectedRadio(val) {
//     setState(() {
//       selectedRadio = val;
//     });
//   }

//   String dropdownvalue = '31';
//   String dropdownvalue1 = '34';
//   String dropdownvalue2 = '37';
//   String dropdownvalue3 = '40';

//   // List of items in our dropdown menu
//   var items = [
//     '31',
//     '32',
//     '33',
//   ];
//   var items1 = [
//     '34',
//     '35',
//     '36',
//   ];
//   var items2 = [
//     '37',
//     '38',
//     '39',
//   ];
//   var items3 = [
//     '40',
//     '41',
//     '42',
//   ];

//   bool isChecked = false;
//   @override
//   Widget build(BuildContext context) {
//     var ScreenSize = MediaQuery.of(context);
//     return Scaffold(
//       drawer: drawer(),
//       resizeToAvoidBottomInset: false,
//       appBar: AppBar(
//         leading: Builder(
//           builder: (BuildContext context) {
//             return IconButton(
//               icon: const Icon(
//                 Icons.menu,
//                 color: Colors.black,
//               ),
//               onPressed: () {
//                 Scaffold.of(context).openDrawer();
//               },
//               // tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
//             );
//           },
//         ),
//         title: Container(
//           width: ScreenSize.size.width * 0.43,
//           // color: Colors.amber,
//           child: Image.asset(
//             "assets/images/omkar-logo 1.png",
//           ),
//         ),

//         leadingWidth: 50,
//         backgroundColor: Colors.white,
//         elevation: 3,
//         foregroundColor: Colors.white,
//         titleSpacing: -10,
//         // actions: [Image.asset("assets/images/Ellipse 27.png")],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Dialog(
//               insetPadding: EdgeInsets.fromLTRB(08, 93, 08, 145),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(9),
//               ),
//               elevation: 10,
//               child: Container(
//                 width: ScreenSize.size.width,
//                 // color: Colors.green,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Row(children: [
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           SizedBox(
//                             height: ScreenSize.size.height * 0.02,
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text(
//                                 'Cleaning',
//                                 style: TextStyle(
//                                   fontSize: 22.0,
//                                   fontWeight: FontWeight.w700,
//                                   color: Color(0xff09618E),
//                                   fontFamily: 'Inter',
//                                 ),
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: ScreenSize.size.height * 0.01,
//                           ),
//                           Row(
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.all(11.0),
//                                 child: Column(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Container(
//                                       width: ScreenSize.size.width * 0.87,
//                                       height: ScreenSize.size.height * 0.30,
//                                       // color: Colors.amber,
//                                       child: Column(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           Row(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.spaceBetween,
//                                             children: <Widget>[
//                                               Text(
//                                                 "No. of Warehouse :",
//                                                 style: TextStyle(
//                                                   letterSpacing: 1.2,
//                                                   fontSize: 16.0,
//                                                   fontWeight: FontWeight.w700,
//                                                   color: Colors.black,
//                                                   fontFamily: 'Inter',
//                                                 ),
//                                               ),
//                                               // SizedBox(
//                                               //   width: ScreenSize.size.width *
//                                               //       0.06,
//                                               // ),
//                                               Container(
//                                                 height: ScreenSize.size.height *
//                                                     0.05,
//                                                 width: ScreenSize.size.width *
//                                                     0.40,
//                                                 decoration: BoxDecoration(
//                                                     border: Border.all(
//                                                         color:
//                                                             Color(0xff0060AF)),
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             6)),
//                                                 child: Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(2.0),
//                                                   child:
//                                                       DropdownButtonHideUnderline(
//                                                     child: ButtonTheme(
//                                                       alignedDropdown: true,
//                                                       child: DropdownButton2(
//                                                         dropdownDecoration:
//                                                             BoxDecoration(
//                                                                 borderRadius:
//                                                                     BorderRadius
//                                                                         .circular(
//                                                                             10)),
//                                                         buttonDecoration:
//                                                             BoxDecoration(
//                                                                 borderRadius:
//                                                                     BorderRadius
//                                                                         .circular(
//                                                                             14)),
//                                                         // scrollbarThickness: 1,
//                                                         scrollbarRadius:
//                                                             Radius.circular(40),
//                                                         isDense: true,

//                                                         isExpanded: true,
//                                                         underline: SizedBox(),

//                                                         // Initial Value
//                                                         value: dropdownvalue,

//                                                         // Down Arrow Icon

//                                                         icon: const Icon(
//                                                             Icons
//                                                                 .arrow_drop_down,
//                                                             color: Color(
//                                                                 0xff0060AF)),
//                                                         iconSize: 20,

//                                                         // Array list of items
//                                                         items: items.map(
//                                                             (String items) {
//                                                           return DropdownMenuItem(
//                                                             value: items,
//                                                             child: Text(
//                                                               items,
//                                                               textAlign:
//                                                                   TextAlign
//                                                                       .center,
//                                                               style: TextStyle(
//                                                                   color: Color(
//                                                                       0xff0060AF)),
//                                                             ),
//                                                           );
//                                                         }).toList(),
//                                                         // After selecting the desired option,it will
//                                                         // change button value to selected value
//                                                         onChanged:
//                                                             (String? newValue) {
//                                                           setState(() {
//                                                             dropdownvalue =
//                                                                 newValue!;
//                                                           });
//                                                         },
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                           Row(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.spaceBetween,
//                                             children: <Widget>[
//                                               Text(
//                                                 "No. of Warehouse :",
//                                                 style: TextStyle(
//                                                   letterSpacing: 1.2,
//                                                   fontSize: 16.0,
//                                                   fontWeight: FontWeight.w700,
//                                                   color: Colors.black,
//                                                   fontFamily: 'Inter',
//                                                 ),
//                                               ),
//                                               // SizedBox(
//                                               //   width: ScreenSize.size.width *
//                                               //       0.06,
//                                               // ),
//                                               Container(
//                                                 height: ScreenSize.size.height *
//                                                     0.05,
//                                                 width: ScreenSize.size.width *
//                                                     0.40,
//                                                 decoration: BoxDecoration(
//                                                     border: Border.all(
//                                                         color:
//                                                             Color(0xff0060AF)),
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             6)),
//                                                 child: Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(2.0),
//                                                   child:
//                                                       DropdownButtonHideUnderline(
//                                                     child: ButtonTheme(
//                                                       alignedDropdown: true,
//                                                       child: DropdownButton2(
//                                                         dropdownDecoration:
//                                                             BoxDecoration(
//                                                                 borderRadius:
//                                                                     BorderRadius
//                                                                         .circular(
//                                                                             10)),
//                                                         buttonDecoration:
//                                                             BoxDecoration(
//                                                                 borderRadius:
//                                                                     BorderRadius
//                                                                         .circular(
//                                                                             14)),
//                                                         // scrollbarThickness: 1,
//                                                         scrollbarRadius:
//                                                             Radius.circular(40),
//                                                         isExpanded: true,
//                                                         underline: SizedBox(),
//                                                         // Initial Value
//                                                         value: dropdownvalue1,

//                                                         // Down Arrow Icon

//                                                         icon: const Icon(
//                                                             Icons
//                                                                 .arrow_drop_down,
//                                                             color: Color(
//                                                                 0xff0060AF)),
//                                                         iconSize: 20,

//                                                         // Array list of items
//                                                         items: items1.map(
//                                                             (String items1) {
//                                                           return DropdownMenuItem(
//                                                             value: items1,
//                                                             child: Text(
//                                                               items1,
//                                                               textAlign:
//                                                                   TextAlign
//                                                                       .center,
//                                                               style: TextStyle(
//                                                                   color: Color(
//                                                                       0xff0060AF)),
//                                                             ),
//                                                           );
//                                                         }).toList(),
//                                                         // After selecting the desired option,it will
//                                                         // change button value to selected value
//                                                         onChanged:
//                                                             (String? newValue) {
//                                                           setState(() {
//                                                             dropdownvalue1 =
//                                                                 newValue!;
//                                                           });
//                                                         },
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                           Row(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.spaceBetween,
//                                             children: <Widget>[
//                                               Text(
//                                                 "No. of Warehouse :",
//                                                 style: TextStyle(
//                                                   letterSpacing: 1.2,
//                                                   fontSize: 16.0,
//                                                   fontWeight: FontWeight.w700,
//                                                   color: Colors.black,
//                                                   fontFamily: 'Inter',
//                                                 ),
//                                               ),
//                                               // SizedBox(
//                                               //   width: ScreenSize.size.width *
//                                               //       0.06,
//                                               // ),
//                                               Container(
//                                                 height: ScreenSize.size.height *
//                                                     0.05,
//                                                 width: ScreenSize.size.width *
//                                                     0.40,
//                                                 decoration: BoxDecoration(
//                                                     border: Border.all(
//                                                         color:
//                                                             Color(0xff0060AF)),
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             6)),
//                                                 child: Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(2.0),
//                                                   child:
//                                                       DropdownButtonHideUnderline(
//                                                     child: ButtonTheme(
//                                                       alignedDropdown: true,
//                                                       child: DropdownButton2(
//                                                         dropdownDecoration:
//                                                             BoxDecoration(
//                                                                 borderRadius:
//                                                                     BorderRadius
//                                                                         .circular(
//                                                                             10)),
//                                                         buttonDecoration:
//                                                             BoxDecoration(
//                                                                 borderRadius:
//                                                                     BorderRadius
//                                                                         .circular(
//                                                                             14)),
//                                                         // scrollbarThickness: 1,
//                                                         scrollbarRadius:
//                                                             Radius.circular(40),
//                                                         isExpanded: true,
//                                                         underline: SizedBox(),
//                                                         // Initial Value
//                                                         value: dropdownvalue2,

//                                                         // Down Arrow Icon

//                                                         icon: const Icon(
//                                                             Icons
//                                                                 .arrow_drop_down,
//                                                             color: Color(
//                                                                 0xff0060AF)),
//                                                         iconSize: 20,

//                                                         // Array list of items
//                                                         items: items2.map(
//                                                             (String items2) {
//                                                           return DropdownMenuItem(
//                                                             value: items2,
//                                                             child: Text(
//                                                               items2,
//                                                               textAlign:
//                                                                   TextAlign
//                                                                       .center,
//                                                               style: TextStyle(
//                                                                   color: Color(
//                                                                       0xff0060AF)),
//                                                             ),
//                                                           );
//                                                         }).toList(),
//                                                         // After selecting the desired option,it will
//                                                         // change button value to selected value
//                                                         onChanged:
//                                                             (String? newValue) {
//                                                           setState(() {
//                                                             dropdownvalue2 =
//                                                                 newValue!;
//                                                           });
//                                                         },
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                           Row(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.spaceBetween,
//                                             children: <Widget>[
//                                               Text(
//                                                 "No. of Warehouse :",
//                                                 style: TextStyle(
//                                                   letterSpacing: 1.2,
//                                                   fontSize: 16.0,
//                                                   fontWeight: FontWeight.w700,
//                                                   color: Colors.black,
//                                                   fontFamily: 'Inter',
//                                                 ),
//                                               ),
//                                               // SizedBox(
//                                               //   width: ScreenSize.size.width *
//                                               //       0.06,
//                                               // ),
//                                               Container(
//                                                 height: ScreenSize.size.height *
//                                                     0.05,
//                                                 width: ScreenSize.size.width *
//                                                     0.40,
//                                                 decoration: BoxDecoration(
//                                                     border: Border.all(
//                                                         color:
//                                                             Color(0xff0060AF)),
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             6)),
//                                                 child: Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(2.0),
//                                                   child:
//                                                       DropdownButtonHideUnderline(
//                                                     child: ButtonTheme(
//                                                       alignedDropdown: true,
//                                                       child: DropdownButton2(
//                                                         dropdownDecoration:
//                                                             BoxDecoration(
//                                                                 borderRadius:
//                                                                     BorderRadius
//                                                                         .circular(
//                                                                             10)),
//                                                         buttonDecoration:
//                                                             BoxDecoration(
//                                                                 borderRadius:
//                                                                     BorderRadius
//                                                                         .circular(
//                                                                             14)),
//                                                         // scrollbarThickness: 1,
//                                                         scrollbarRadius:
//                                                             Radius.circular(40),
//                                                         isExpanded: true,
//                                                         underline: SizedBox(),
//                                                         // Initial Value
//                                                         value: dropdownvalue3,

//                                                         // Down Arrow Icon

//                                                         icon: const Icon(
//                                                             Icons
//                                                                 .arrow_drop_down,
//                                                             color: Color(
//                                                                 0xff0060AF)),
//                                                         iconSize: 20,

//                                                         // Array list of items
//                                                         items: items3.map(
//                                                             (String items3) {
//                                                           return DropdownMenuItem(
//                                                             value: items3,
//                                                             child: Text(
//                                                               items3,
//                                                               textAlign:
//                                                                   TextAlign
//                                                                       .center,
//                                                               style: TextStyle(
//                                                                   color: Color(
//                                                                       0xff0060AF)),
//                                                             ),
//                                                           );
//                                                         }).toList(),
//                                                         // After selecting the desired option,it will
//                                                         // change button value to selected value
//                                                         onChanged:
//                                                             (String? newValue) {
//                                                           setState(() {
//                                                             dropdownvalue3 =
//                                                                 newValue!;
//                                                           });
//                                                         },
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),

//                       // Text(
//                     ]),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Container(
//                           // color: Colors.amber,
//                           height: ScreenSize.size.height * 0.06,
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             children: [
//                               Container(
//                                   height: ScreenSize.size.height * 0.05,
//                                   // width: ScreenSize.size.width * 0.33,
//                                   child: ElevatedButton(
//                                     style: ElevatedButton.styleFrom(
//                                         primary: Color(0xff0060AF),
//                                         // side:
//                                         //     BorderSide(color: Colors.white, width: 1),
//                                         shape: RoundedRectangleBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(4.0))),
//                                     child: Text(
//                                       "Submit Request",
//                                       style: TextStyle(
//                                         fontSize: 12.0,
//                                         fontWeight: FontWeight.w300,
//                                         color: Color(0xffFFFFFF),
//                                         fontFamily: 'Inter',
//                                       ),
//                                     ),
//                                     onPressed: () {
//                                       showDialog(
//                                           barrierDismissible: false,
//                                           context: context,
//                                           builder: (BuildContext context) {
//                                             return CleaningSuccesfuly();
//                                           });
//                                       // Navigator.push(
//                                       //   context,
//                                       //   MaterialPageRoute(
//                                       //       builder: (context) =>
//                                       //           const CleaningSuccesfuly(),
//                                       //       maintainState: false),
//                                       // );
//                                     },
//                                   ))
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                     SizedBox(
//                       height: ScreenSize.size.height * 0.01,
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
