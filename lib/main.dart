import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:omkarreal_application_123/sharedemo.dart/Logindemo.dart';
import 'package:overlay_support/overlay_support.dart';
import 'Demo/nav.dart';
import 'Drawer.dart';
import 'Electrict/ElectricPage.dart';
import 'HomePage.dart';
import 'LogInPage.dart';
import 'RegistrationPage.dart';
import 'Security/SecurityPage.dart';
import 'Welcomcerser.dart';

main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return OverlaySupport.global(
        child: MaterialApp(
      initialRoute: '/',
      routes: {
        '/home': (context) => const Home(),
        '/Login': (context) => Login(),
        '/Registration': (context) => const Registration(),
        '/Security': (context) => const Security(),
        '/Drawer': (context) =>  Drawer1(),
        '/Electric': (context) => const Electric(),
        "/welcome": (context) => const Welcomecer()
      },
      debugShowCheckedModeBanner: false,
      home: Home2(),
    ));
  }
}
