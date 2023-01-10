import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:omkarreal_application_123/LogInPage.dart';
import 'package:omkarreal_application_123/sharedemo.dart/homepage.dart';
import 'package:omkarreal_application_123/sharedemo.dart/splacessscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Home2 extends StatefulWidget {
  const Home2({ Key? key }) : super(key: key);
  @override
  _Home2State createState() => _Home2State();
} 
class _Home2State extends State<Home2> {
  final formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
  return Scaffold(
 appBar: AppBar(
backgroundColor: Colors.blue,
),
body: SafeArea(
  child:   Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
         child: TextField(
           controller: emailController,
           decoration: InputDecoration(
             hintText: 'Enter Email',
             contentPadding: const EdgeInsets.all(10.0),
             hintStyle: TextStyle(
               color: Colors.blueGrey,fontWeight:FontWeight.bold,
             ),
           ),
         ), 
    
        ),    Padding(
          padding: const EdgeInsets.all(10.0),
         child: TextField(
           controller: passwordController,
           decoration: InputDecoration(
             hintText: 'Enter password',
             contentPadding: const EdgeInsets.all(10.0),
             hintStyle: TextStyle(
               color: Colors.blueGrey,fontWeight:FontWeight.bold,
             ),
           ),
         ),
        ),
        
        MaterialButton(
         color: Colors.blue,
   child: Text('Login'),
          onPressed: () async{
           final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
           sharedPreferences.setString("email", emailController.text);
         
           Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  homepage()),
  );
          },
          )
      ],
    ),
  ),
),
  );
  }
}