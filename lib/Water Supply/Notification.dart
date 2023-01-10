import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:omkarreal_application_123/Drawer.dart';

class NOti extends StatefulWidget {
  const NOti({Key? key}) : super(key: key);

  @override
  State<NOti> createState() => _NOtiState();
}

class _NOtiState extends State<NOti> {
  @override
  Widget build(BuildContext context) {
    var ScreenSize = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_outlined,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Drawer1()));
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        centerTitle: true,
        title: Text('Notification',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              color: Color(0xff09618E),
              fontFamily: 'bold',
            )),

        // leadingWidth: 50,
        backgroundColor: Colors.white,
        // elevation: 3,
        foregroundColor: Colors.white,
        // titleSpacing: -10,
        // actions: [Image.asset("assets/images/Ellipse 27.png")],
      ),
      body: Container(
        width: ScreenSize.size.width,
        height: ScreenSize.size.height,
        child: Column(
          children: [
            SizedBox(
              height: ScreenSize.size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your request has been successfully",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    "2 min ago",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your request has been successfully",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    "21 Dec 2022",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your submitted request is in process",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    "21 Dec 2022",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
