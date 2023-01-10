import 'package:flutter/material.dart';
import 'Drawer.dart';

class AboutAap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var ScreenSize = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Color(0xff09618E),
              ),
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Drawer1(), maintainState: false),
                );
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(builder: (context) => const Drawer1()),
                // );
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Text(
          'About App',
          style: TextStyle(
            fontSize: 19.0,
            fontWeight: FontWeight.w700,
            color: Color(0xff09618E),
            fontFamily: 'Inter',
          ),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        width: ScreenSize.size.width,
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: ScreenSize.size.height * 0.02,
                )
                // Container(
                //   width: ScreenSize.size.width,
                //   height: 100,
                //   // color: Colors.amber,
                //   child: Image.asset(
                //       "assets/images/lorries-outside-a-large-warehouse 2.png"),
                // )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: ScreenSize.size.width * 0.96,
                    // color: Colors.amber,
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and type setting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic type setting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontFamily: 'Inter',
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
