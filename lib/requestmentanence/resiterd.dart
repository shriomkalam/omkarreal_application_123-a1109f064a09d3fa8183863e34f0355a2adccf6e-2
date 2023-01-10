import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
// import 'package:omkar_development/Drawer.dart';
// import 'package:omkar_development/Electrict/ElectrictSuccesfulyPage.dart';
// import 'package:omkar_development/Logout.dart';

// import 'package:omkar_development/RegistrationPage.dart';

import '../customdrawer.dart';

class registred extends StatefulWidget {
  const registred({super.key});

  @override
  State<registred> createState() => _registredState();
}

class _registredState extends State<registred> {
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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: drawer(),
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Container(
          width: ScreenSize.size.width * 0.43,
          // color: Colors.amber,
          child: Image.asset(
            "assets/images/omkar-logo 1.png",
          ),
        ),

        leadingWidth: 50,
        backgroundColor: Colors.white,
        elevation: 3,
        foregroundColor: Colors.white,
        titleSpacing: -10,
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
              insetPadding: EdgeInsets.fromLTRB(13, 73, 10, 145),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(9),
              ),
              elevation: 10,
              child: Container(
                width: ScreenSize.size.width,
                // color: Colors.green,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Request for maintenance',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff09618E),
                              fontFamily: 'Inter',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: ScreenSize.size.height * 0.03,
                      ),
                      Row(
                        children: [
                          Text(
                            'Your Name',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff09618E),
                              fontFamily: 'Inter',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            // color: Colors.amber,
                            height: ScreenSize.size.height * 0.07,
                            width: ScreenSize.size.width * 0.90,
                            child: TextFormField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.person_outline,
                                    color: Colors.white,
                                  ),
                                  // labelText: "Email",
                                  labelStyle: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white,
                                    fontFamily: 'Inter',
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.blue))
                                  // enabledBorder: UnderlineInputBorder(
                                  //     borderSide: BorderSide(
                                  //         color: Colors.white)),
                                  ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: ScreenSize.size.height * 0.01,
                      ),
                      Row(
                        children: [
                          Text(
                            'Email Address',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff09618E),
                              fontFamily: 'Inter',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            // color: Colors.amber,
                            height: ScreenSize.size.height * 0.07,
                            width: ScreenSize.size.width * 0.90,
                            child: TextFormField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.person_outline,
                                    color: Colors.white,
                                  ),
                                  // labelText: "Email",
                                  labelStyle: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white,
                                    fontFamily: 'Inter',
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.blue))
                                  // enabledBorder: UnderlineInputBorder(
                                  //     borderSide: BorderSide(
                                  //         color: Colors.white)),
                                  ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: ScreenSize.size.height * 0.01,
                      ),
                      Row(
                        children: [
                          Text(
                            'Phone Number',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff09618E),
                              fontFamily: 'Inter',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            // color: Colors.amber,
                            height: ScreenSize.size.height * 0.07,
                            width: ScreenSize.size.width * 0.90,
                            child: TextFormField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.person_outline,
                                    color: Colors.white,
                                  ),
                                  // labelText: "Email",
                                  labelStyle: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white,
                                    fontFamily: 'Inter',
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.blue))
                                  // enabledBorder: UnderlineInputBorder(
                                  //     borderSide: BorderSide(
                                  //         color: Colors.white)),
                                  ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: ScreenSize.size.height * 0.01,
                      ),
                      Row(
                        children: [
                          Text(
                            'Request Details',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff09618E),
                              fontFamily: 'Inter',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: ScreenSize.size.height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: ScreenSize.size.width * 0.90,
                            // height:
                            // ScreenSize.size.height * 0.13,
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff0060AF)),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8.0),
                                    topRight: Radius.circular(8.0),
                                    bottomLeft: Radius.circular(8.0),
                                    bottomRight: Radius.circular(8.0)),
                                // color: Color.fromARGB(255, 247, 237, 231),
                                color: Colors.white),
                            height: ScreenSize.size.height * 0.20,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Form(
                                // key: _formkey,
                                child: Column(
                                  children: [
                                    TextFormField(
                                      // controller: _controller,

                                      // controller: _confirmpassword,
                                      // validator: (String? value) {
                                      //   if (value == null || value.trim().length == 0) {
                                      //     return "";
                                      //   }
                                      //   return null;
                                      // },
                                      // minLines: 5,
                                      // maxLines: 3,

                                      decoration: InputDecoration(
                                        hintStyle: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff818181),
                                          fontFamily: 'Montserrat Alternates',
                                        ),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: ScreenSize.size.height * 0.01,
                      ),
                      Row(
                        children: [
                          Text(
                            'Location',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff09618E),
                              fontFamily: 'Inter',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: ScreenSize.size.height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            // color: Colors.amber,
                            height: ScreenSize.size.height * 0.07,
                            width: ScreenSize.size.width * 0.90,
                            child: TextFormField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.person_outline,
                                    color: Colors.white,
                                  ),
                                  // labelText: "Email",
                                  labelStyle: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white,
                                    fontFamily: 'Inter',
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.blue))
                                  // enabledBorder: UnderlineInputBorder(
                                  //     borderSide: BorderSide(
                                  //         color: Colors.white)),
                                  ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            // color: Colors.amber,
                            // height: ScreenSize.size.height * 0.06,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                    // height: ScreenSize.size.height * 0.05,
                                    // width: ScreenSize.size.width * 0.33,
                                    child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Color(0xff0060AF),
                                      // side:
                                      //     BorderSide(color: Colors.white, width: 1),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.0))),
                                  child: Text(
                                    "Submit Request",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xffFFFFFF),
                                      fontFamily: 'Inter',
                                    ),
                                  ),
                                  onPressed: () {
                                    // Navigator.pushNamed(
                                    //     context, '/ElectricSuccesfuly');
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
                      SizedBox(
                        height: ScreenSize.size.height * 0.01,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
