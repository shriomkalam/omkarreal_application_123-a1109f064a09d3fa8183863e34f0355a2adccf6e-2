import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:omkarreal_application_123/sharedemo.dart/Logindemo.dart';
import 'package:omkarreal_application_123/sharedemo.dart/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

 String ?finalEmail;
class splacess extends StatefulWidget {
  // const splacess({ Key? key }) : super(key: key);
  @override
  _splacessState createState() => _splacessState();
}
class _splacessState extends State<splacess> {
  void Initstate(){
getvalidationdata().whenComplete(() async{
Timer(Duration(seconds: 10),() => 
// Get.to(finalEmail == null ?Home2(): homepage())

  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => (finalEmail == null ?homepage(): Home2())
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
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
  )
          ],
        ),
      ),
      
    );
  }
}