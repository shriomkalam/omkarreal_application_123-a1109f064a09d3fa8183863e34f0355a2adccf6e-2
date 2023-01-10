import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:omkarreal_application_123/Cleaning/clean1.dart';
import 'package:omkarreal_application_123/Services/ServicesPage.dart';
import 'package:omkarreal_application_123/Tracerequest/TraceRequest.dart';
import 'package:omkarreal_application_123/Water%20Supply/Notification.dart';
import 'package:omkarreal_application_123/model/ProductModel.dart';
import 'package:omkarreal_application_123/model/manages.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'AboutAap.dart';
import 'Cleaning/CleaningPage.dart';
import 'Electrict/ElectricPage.dart';
import 'Logout.dart';
import 'RateAap.dart';
import 'Repair/RepairPage.dart';
import 'Security/SecurityPage.dart';
import 'Water Supply/WaterSupplyPage.dart';
import 'customdrawer.dart';
import 'dart:convert';
import 'dart:io';

class Drawer1 extends StatefulWidget {
  
   Drawer1({
    Key? key,
  }) : super(key: key);

  @override
  State<Drawer1> createState() => _Drawer1State();
}
var data;
var rajj;
Future<Manges?> gatPostById() async {
  var response = await http.get(
    Uri.parse(
        'http://192.168.0.121:8000/service-api/get-service-request/?service_type=Cleaning'),
  );
  
  if (response.statusCode == 200) {

      data = jsonDecode(response.body);
  // print(data);
 rajj = data['response'];
//  print("hello raj is ${rajj}");

  // print(data['response']['rental-gala'][0]);

    return Manges.fromJson(json.decode(response.body));
  } else {
    // If the response was umexpected, throw an error.
    throw Exception('Failed to load post');
  }
}

class _Drawer1State extends State<Drawer1> {
  Future<SharedPreferences> prefs = SharedPreferences.getInstance();
  late DateTime today;
  var data1;
  var data;
  late Future<Manges?> post;
  // get drawer => null;
  @override
  void initState() {
    super.initState();
    post = gatPostById();
    today = DateTime.now();
    checkLogin1();
  }

  // void initState() {
  //   super.initState();
  //   today = DateTime.now();
  //   checkLogin1();
  // }

  void checkLogin() async {
    SharedPreferences perf = await SharedPreferences.getInstance();
    String? val = perf.getString("login");
    // print("navneet${val}");
    if (val != null) {
      Navigator.of(context)
          .pushNamedAndRemoveUntil('/Drawer', (Route<dynamic> route) => false);
    }
  }

  var user1;
  var email1;
// com.example.omkar_development
  void checkLogin1() async {
    SharedPreferences perf = await SharedPreferences.getInstance();
    String? val2 = perf.getString("user");
    String? val3 = perf.getString("email");
    setState(() {
      user1 = val2;
    });
    setState(() {
      email1 = val3;
    });
    // print("${user1}");
    if (val2 != null) {}
  }

  // late Future<Login2> post;
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Electricity',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  String? selectedValue;
  String dropdownValue = 'City';
  @override
  Widget build(BuildContext context) {
    print(user1);
    // print("ojhfgasdfgsjg${user1}");
    var ScreenSize = MediaQuery.of(context);
    return Scaffold(
      drawer: drawer(),
      backgroundColor: Colors.white,
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
        elevation: 2,
        foregroundColor: Colors.white,
        titleSpacing: -10,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NOti()),
              );
            },
            icon: const Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // SizedBox(
            //   height: ScreenSize.size.height,
            //   width: ScreenSize.size.width,
            //   child: Image.asset("assets/images/10893 3 (1).png",
            //       fit: BoxFit.cover),
            // ),
            Container(
              child: Column(
                children: [
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   children: [
                  //     Container(
                  //       child: Row(
                  //         children: [
                  //           Builder(builder: (context) {
                  //             return IconButton(
                  //               onPressed: () =>
                  //                   Scaffold.of(context).openDrawer(),
                  //               icon: Icon(Icons.menu),
                  //             );
                  //           }),
                  //           Container(
                  //             // color: Colors.amber,
                  //             height: ScreenSize.size.height * 0.09,
                  //             width: ScreenSize.size.width * 0.40,
                  //             child: Image.asset(
                  //                 'assets/images/omkar-logo 1.png'),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: ScreenSize.size.width,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                'Services',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff0060Af),
                                ),
                                // color: Colors.black),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        color: Color.fromARGB(255, 255, 250, 250),
                        height: ScreenSize.size.height * 0.21,
                        width: ScreenSize.size.width,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Card(
                                elevation: 7,
                                color: Color.fromARGB(255, 181, 19, 73),
                                child: MaterialButton(
                                  // enableFeedback: false,
                                  highlightElevation: 0,
                                  child: Container(
                                    height: ScreenSize.size.height * 0.15,
                                    width: ScreenSize.size.width * 0.2,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        // Icon(
                                        //   Icons.electric_bolt_outlined,
                                        //   color: Colors.white,
                                        //   size: 50,
                                        // ),
                                        Container(
                                          height: ScreenSize.size.height * 0.08,
                                          child: Image.asset(
                                              "assets/images/healthicons_electricity-outline (1).png"),
                                        ),
                                        Text(
                                          'Electricity',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ],
                                    ),
                                  ),
                                  onPressed: () {
                                    //  Navigator.popAndPushNamed(
                                    //   context, '/Electric');
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Electric(),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Card(
                                elevation: 7,
                                color: Colors.amber,
                                child: MaterialButton(
                                  child: Container(
                                    height: ScreenSize.size.height * 0.17,
                                    width: ScreenSize.size.width * 0.26,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: ScreenSize.size.height * 0.08,
                                          child: Image.asset(
                                              "assets/images/material-symbols_cleaning-bucket-outline-rounded (1).png"),
                                        ),
                                        Text(
                                          'Cleaning',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ],
                                    ),
                                  ),
                                  onPressed: () {
               
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  Cleaning(rajj)


                                  
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Card(
                                surfaceTintColor: Colors.amber,
                                elevation: 7,
                                color: Colors.green,
                                child: MaterialButton(
                                  child: Container(
                                    height: ScreenSize.size.height * 0.17,
                                    width: ScreenSize.size.width * 0.26,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.security_outlined,
                                          color: Colors.white,
                                          size: 50,
                                        ),
                                        Text(
                                          'Security',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ],
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Security(),
                                          maintainState: false),
                                    );
                                  },
                                ),
                              ),
                              Card(
                                elevation: 7,
                                color: Colors.blueGrey,
                                child: MaterialButton(
                                  child: Container(
                                    height: ScreenSize.size.height * 0.17,
                                    width: ScreenSize.size.width * 0.26,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: ScreenSize.size.height * 0.08,
                                          // child: Image.asset(
                                          //     "assets/images/Vector (1) (1).png"),
                                          child: Icon(
                                            Icons.water_drop_sharp,
                                            color: Colors.white,
                                            size: 36.0,
                                          ),
                                        ),
                                        Text(
                                          'Water Supply',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ],
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => WaterSupply(),
                                          maintainState: false),
                                    );
                                  },
                                ),
                              ),
                              Card(
                                elevation: 7,
                                color: Color.fromARGB(255, 110, 221, 195),
                                child: MaterialButton(
                                  child: Container(
                                    height: ScreenSize.size.height * 0.17,
                                    width: ScreenSize.size.width * 0.26,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.home_repair_service_sharp,
                                          color: Colors.white,
                                          size: 50,
                                        ),
                                        Text(
                                          'Repair',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ],
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Repair(),
                                          maintainState: false),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: ScreenSize.size.width,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                'Trace Application status',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff0060Af),
                                ),
                                // color: Colors.black),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        color: Color.fromARGB(255, 255, 250, 250),
                        height: ScreenSize.size.height * 0.21,
                        width: ScreenSize.size.width,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              // Card(
                              //   elevation: 7,
                              //   color: Colors.amber,
                              //   child: MaterialButton(
                              //     child: Container(
                              //       height: ScreenSize.size.height * 0.17,
                              //       width: ScreenSize.size.width * 0.26,
                              //       child: Column(
                              //         mainAxisAlignment:
                              //             MainAxisAlignment.center,
                              //         children: [
                              //           Container(
                              //             height: ScreenSize.size.height * 0.07,
                              //             child: Image.asset(
                              //                 "assets/images/1-1.png"),
                              //           ),
                              //           SizedBox(
                              //             height: ScreenSize.size.height * 0.01,
                              //           ),
                              //           Text(
                              //             'Floor',
                              //             style: TextStyle(
                              //               fontSize: 12,
                              //               fontWeight: FontWeight.w600,
                              //               color: Colors.white,
                              //             ),
                              //             textAlign: TextAlign.start,
                              //           ),
                              //         ],
                              //       ),
                              //     ),
                              //     onPressed: () {},
                              //   ),
                              // ),
                              Card(
                                elevation: 7,
                                color: Color.fromARGB(255, 59, 108, 117),
                                child: MaterialButton(
                                  child: Container(
                                    height: ScreenSize.size.height * 0.17,
                                    width: ScreenSize.size.width * 0.26,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: ScreenSize.size.height * 0.07,
                                          // child: Image.asset(
                                          //     "assets/images/1-2.png"),
                                          child: Icon(
                                            Icons.table_view_rounded,
                                            color: Colors.white,
                                            size: 40.0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: ScreenSize.size.height * 0.01,
                                        ),
                                        Text(
                                          'Trace request\nservices status',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ],
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Trace()));
                                  },
                                ),
                              ),
                              // Card(
                              //   child: Container(
                              //     color: Colors.blue,
                              //     height: ScreenSize.size.height * 0.17,
                              //     width: ScreenSize.size.width * 0.29,
                              //     child: Text("fgsdfg"),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: ScreenSize.size.width,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                'Contract',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff0060Af),
                                ),
                                // color: Colors.black),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        color: Color.fromARGB(255, 255, 250, 250),
                        height: ScreenSize.size.height * 0.21,
                        width: ScreenSize.size.width,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Card(
                                elevation: 7,
                                color: Colors.blueGrey,
                                child: MaterialButton(
                                  child: Container(
                                    height: ScreenSize.size.height * 0.17,
                                    width: ScreenSize.size.width * 0.26,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: ScreenSize.size.height * 0.07,
                                          child: Image.asset(
                                              "assets/images/1-3.png"),
                                        ),
                                        SizedBox(
                                          height: ScreenSize.size.height * 0.01,
                                        ),
                                        Text(
                                          'View Contract',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ],
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              Card(
                                elevation: 7,
                                color: Colors.lightGreen,
                                child: MaterialButton(
                                  child: Container(
                                    height: ScreenSize.size.height * 0.17,
                                    width: ScreenSize.size.width * 0.26,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: ScreenSize.size.height * 0.07,
                                          child: Image.asset(
                                              "assets/images/1-4.png"),
                                        ),
                                        SizedBox(
                                          height: ScreenSize.size.height * 0.01,
                                        ),
                                        Text(
                                          'Renew Contract',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ],
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              // Card(
                              //   child: Container(
                              //     color: Colors.blue,
                              //     height: ScreenSize.size.height * 0.17,
                              //     width: ScreenSize.size.width * 0.29,
                              //     child: Text("fgsdfg"),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: ScreenSize.size.width,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                'Leave Request',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff0060Af),
                                ),
                                // color: Colors.black),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        color: Color.fromARGB(255, 255, 250, 250),
                        height: ScreenSize.size.height * 0.21,
                        width: ScreenSize.size.width,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Card(
                                elevation: 7,
                                color: Color.fromARGB(255, 113, 103, 186),
                                child: MaterialButton(
                                  child: Container(
                                    height: ScreenSize.size.height * 0.17,
                                    width: ScreenSize.size.width * 0.25,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: ScreenSize.size.height * 0.07,
                                          child: Image.asset(
                                              "assets/images/pepicons_leave (1).png"),
                                        ),
                                        SizedBox(
                                          height: ScreenSize.size.height * 0.01,
                                        ),
                                        Text(
                                          'Leave',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ],
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
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
    );
  }

  Drawer12() {
    Drawer(
      // column holds all the widgets in the drawer
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            // ListView contains a group of widgets that scroll inside the drawer
            child: ListView(
              children: [
                DrawerHeader(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 154, 203, 243),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: CircleAvatar(
                            radius: 38,
                            child: Icon(
                              Icons.person,
                              size: 30,
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              child: Text("${user1}"),
                            ),
                            Container(
                              child: Text("${email1}"),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.edit,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ],
                    )),
                ListTile(
                  tileColor: Color(0xff66849D),
                  minLeadingWidth: 0,
                  minVerticalPadding: 0,
                  contentPadding: EdgeInsets.only(left: 11),
                  leading: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Drawer1(),
                          maintainState: false),
                    );
                  },
                  title: Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffFFFFFF),
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                ListTile(
                  tileColor: Color(0xff66849D),
                  minLeadingWidth: 0,
                  minVerticalPadding: 0,
                  contentPadding: EdgeInsets.only(left: 11),
                  leading: Icon(
                    Icons.apps,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutAap()),
                    );
                  },
                  title: Text(
                    'About App',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                ListTile(
                  tileColor: Color(0xff66849D),
                  minLeadingWidth: 0,
                  minVerticalPadding: 0,
                  contentPadding: EdgeInsets.only(left: 11),
                  leading: Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Share.share("com.example.omkar_development");
                  },
                  title: Text(
                    'Share App',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                ListTile(
                  tileColor: Color(0xff66849D),
                  minLeadingWidth: 0,
                  minVerticalPadding: 0,
                  contentPadding: EdgeInsets.only(left: 11),
                  leading: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Rate()),
                    );
                  },
                  title: Text(
                    'Rate App',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                ListTile(
                  tileColor: Color(0xff66849D),
                  minLeadingWidth: 0,
                  minVerticalPadding: 0,
                  contentPadding: EdgeInsets.only(left: 11),
                  leading: Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                  onTap: () {
                    // Navigator.pushReplacement(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => Repair(),
                    //       maintainState: false),
                    // );
                  },
                  title: Text(
                    'FAQ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                ListTile(
                  tileColor: Color(0xff66849D),
                  minLeadingWidth: 0,
                  minVerticalPadding: 0,
                  contentPadding: EdgeInsets.only(left: 11),
                  leading: Icon(
                    Icons.logout_sharp,
                    color: Colors.white,
                  ),
                  onTap: () async {
                    // final SharedPreferences prefs = await prefs;
                    // prefs.setBool("isLoggedIn", false);
                    // showSimpleNotification(Text("You are logged Out"),
                    // background: Colors.red);
                    showDialog(
                        useRootNavigator: true,
                        context: context,
                        builder: (BuildContext context) {
                          return Logout();
                        });
                  },
                  title: Text(
                    'Logout',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
          ),
          // This container holds the align

          Container(
              // This align moves the children to the bottom
              child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  // This container holds all the children that will be aligned
                  // on the bottom and should not scroll with the above ListView
                  child: Container(
                      child: Column(
                    children: <Widget>[
                      Divider(),
                      // ListTile(
                      //     leading: Icon(Icons.settings),
                      //     title: Text('Settings')),
                      ListTile(
                          // minLeadingWidth: 0.1,
                          // title: Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     // Container(
                          //     //     width: 140,
                          //     //     child: Image.asset(
                          //     //         "assets/images/omkar-logo.png")),
                          //     // Container(
                          //     //   child: Text('Version v.01'),
                          //     // )
                          //   ],
                          // ),
                          title: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Version v.01'),
                        ],
                      ))
                    ],
                  ))))
        ],
      ),
    );
  }
}
