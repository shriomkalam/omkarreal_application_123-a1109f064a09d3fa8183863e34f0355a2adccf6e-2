import 'package:flutter/material.dart';
import 'package:omkarreal_application_123/Demo/Editprofile.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'AboutAap.dart';
import 'AboutAap1.dart';
import 'Drawer.dart';
import 'FAQ.dart';
import 'Logout.dart';
import 'RateAap.dart';

class drawer extends StatefulWidget {
  drawer({super.key});

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  Future<SharedPreferences> prefs = SharedPreferences.getInstance();
  late DateTime today;
  var data1;
  var data;

  // get drawer => null;
  @override
  void initState() {
    super.initState();
    today = DateTime.now();
    checkLogin1();
  }

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
    return Drawer(
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
                        Container(
                          // color: Colors.amber,
                          height: 25,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Editprofile()),
                                    );
                                  },
                                  icon: Icon(Icons.edit))
                            ],
                          ),
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
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) => Drawer1()),
                        (Route<dynamic> route) => false);
                    // Navigator.of(context).pushNamedAndRemoveUntil(
                    //     '/Drawer',
                    //     (
                    //       Route<dynamic> route,
                    //     ) =>
                    //         false);
                    // Navigator.pushReplacement(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => Drawer1(),
                    //       maintainState: false),
                    // );
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FAQ()),
                    );
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
                // ListTile(
                //   tileColor: Color(0xff66849D),
                //   minLeadingWidth: 0,
                //   minVerticalPadding: 0,
                //   contentPadding: EdgeInsets.only(left: 11),
                //   leading: Icon(
                //     Icons.settings,
                //     color: Colors.white,
                //   ),
                //   onTap: () {
                //     // Navigator.push(
                //     //   context,
                //     //   MaterialPageRoute(builder: (context) => FAQ()),
                //     // );
                //     // Navigator.pushReplacement(
                //     //   context,
                //     //   MaterialPageRoute(
                //     //       builder: (context) => Repair(),
                //     //       maintainState: false),
                //     // );
                //   },
                //   title: Text(
                //     'Setting ',
                //     style: TextStyle(
                //       fontSize: 15,
                //       fontWeight: FontWeight.w600,
                //       color: Colors.white,
                //     ),
                //     textAlign: TextAlign.start,
                //   ),
                // ),
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
