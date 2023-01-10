// import 'package:flutter/material.dart';
// import 'package:omkar_development/Cleaning/CleaningSuccesful.dart';
// import 'package:omkar_development/Electrict/ElectrictSuccesfulyPage.dart';

// import 'package:omkar_development/RegistrationPage.dart';

// class OmkarHome extends StatefulWidget {
//   const OmkarHome({super.key});

//   @override
//   State<OmkarHome> createState() => _OmkarHomeState();
// }

// class _OmkarHomeState extends State<OmkarHome> {
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
//     return SafeArea(
//         child: Scaffold(
//       resizeToAvoidBottomInset: false,
//       // appBar: AppBar(
//       //   backgroundColor: Colors.transparent,
//       //   elevation: 0,
//       //   // toolbarHeight: 67,
//       //   // titleSpacing: -40,

//       //   title: Row(
//       //     mainAxisAlignment: MainAxisAlignment.start,
//       //     children: [
//       //       Container(
//       //         height: ScreenSize.size.height * 0.10,
//       //         width: ScreenSize.size.width * 0.40,
//       //         child: Image.asset('assets/images/omkar-logo 1.png'),
//       //       ),
//       //     ],
//       //   ),
//       // ),
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Container(
//                   // color: Colors.white,
//                   child: Builder(builder: (context) {
//                     return IconButton(
//                       onPressed: () => Scaffold.of(context).openDrawer(),
//                       icon: Icon(Icons.menu),
//                     );
//                   }),
//                 ),
//                 Container(
//                   // color: Colors.amber,
//                   height: ScreenSize.size.height * 0.09,
//                   width: ScreenSize.size.width * 0.40,
//                   child: Image.asset('assets/images/omkar-logo 1.png'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     ));
//   }
// }
