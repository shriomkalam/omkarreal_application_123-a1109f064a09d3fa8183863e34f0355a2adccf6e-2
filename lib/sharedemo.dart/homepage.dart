import 'dart:async';

import 'package:flutter/material.dart';
import 'package:omkarreal_application_123/HomePage.dart';
import 'package:omkarreal_application_123/sharedemo.dart/Logindemo.dart';
import 'package:omkarreal_application_123/sharedemo.dart/splacessscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
String ?finalEmail;
class homepage extends StatefulWidget {
  // const homepage({ Key? key }) : super(key: key);
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  void Initstate(){
getvalidationdata().whenComplete(() async{
Timer(Duration(seconds: 2),() => 
// Get.to(finalEmail == null ?Home2(): homepage())

  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => (finalEmail == null ? Home2(): homepage())
  )
));
  });
  super .initState();
  }
  Future getvalidationdata() async{
   final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
   var ObtainEmail = sharedPreferences.getString("email");
   setState(() {
     finalEmail = ObtainEmail;
   });
   print(finalEmail);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Homepage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
               CircleAvatar(
 child: Icon(Icons.local_activity),
 radius: 50.0,
),
Padding(
  padding: const EdgeInsets.only(top:8.0),
  child: CircularProgressIndicator(
backgroundColor: Colors.white,
  ),
  ),
            Text("hello$finalEmail",style: TextStyle(fontSize: 26),),
            MaterialButton(
              color: Colors.lightBlueAccent,
              child: Text("renovecervilant"),
              onPressed: () async {
                 final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
                 sharedPreferences.remove('email');
                   Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Home2()),
  );
       },
        )
          ],
        ),
        ),
    );
  }
}