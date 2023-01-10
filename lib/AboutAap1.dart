import 'package:flutter/material.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';

import 'Drawer.dart';

class About1 extends StatelessWidget {
  const About1({super.key});

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
      body: Stack(
        children: [
          Center(
            child: Row(
              children: [
                Container(
                  width: ScreenSize.size.width,
                  height: ScreenSize.size.height,
                  child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(children: [
                              GFAccordion(
                                collapsedIcon: Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  color: Colors.white,
                                ),
                                expandedIcon: Icon(
                                  Icons.keyboard_arrow_up,
                                  color: Colors.white,
                                ),
                                titleBorderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(6),
                                  topRight: Radius.circular(6),
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(0),
                                ),
                                contentBorderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(7),
                                    bottomRight: Radius.circular(7)),
                                // contentBorderRadius: BorderRadius.circular(3),
                                collapsedTitleBackgroundColor:
                                    Color.fromARGB(255, 121, 178, 225),
                                expandedTitleBackgroundColor:
                                    Color.fromARGB(255, 90, 159, 216),
                                contentBackgroundColor:
                                    Color.fromARGB(255, 172, 206, 233),
                                title:
                                    "Lorem Ipsum is simply dummy text of the printing and type setting industry?",
                                textStyle: TextStyle(color: Colors.white),
                                content:
                                    "Lorem Ipsum is simply dummy text of the printing and type setting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic type setting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum..",
                              ),
                              GFAccordion(
                                collapsedIcon: Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  color: Colors.white,
                                ),
                                expandedIcon: Icon(
                                  Icons.keyboard_arrow_up,
                                  color: Colors.white,
                                ),
                                titleBorderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(6),
                                  topRight: Radius.circular(6),
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(0),
                                ),
                                contentBorderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(7),
                                    bottomRight: Radius.circular(7)),
                                // contentBorderRadius: BorderRadius.circular(3),
                                collapsedTitleBackgroundColor:
                                    Color.fromARGB(255, 121, 178, 225),
                                expandedTitleBackgroundColor:
                                    Color.fromARGB(255, 90, 159, 216),
                                contentBackgroundColor:
                                    Color.fromARGB(255, 172, 206, 233),
                                title:
                                    "Lorem Ipsum is simply dummy text of the printing and type setting industry?",
                                textStyle: TextStyle(color: Colors.white),
                                content:
                                    "Lorem Ipsum is simply dummy text of the printing and type setting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic type setting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum..",
                              ),
                              GFAccordion(
                                collapsedIcon: Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  color: Colors.white,
                                ),
                                expandedIcon: Icon(
                                  Icons.keyboard_arrow_up,
                                  color: Colors.white,
                                ),
                                titleBorderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(6),
                                  topRight: Radius.circular(6),
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(0),
                                ),
                                contentBorderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(7),
                                    bottomRight: Radius.circular(7)),
                                // contentBorderRadius: BorderRadius.circular(3),
                                collapsedTitleBackgroundColor:
                                    Color.fromARGB(255, 121, 178, 225),
                                expandedTitleBackgroundColor:
                                    Color.fromARGB(255, 90, 159, 216),
                                contentBackgroundColor:
                                    Color.fromARGB(255, 172, 206, 233),
                                title:
                                    "Lorem Ipsum is simply dummy text of the printing and type setting industry?",
                                textStyle: TextStyle(color: Colors.white),
                                content:
                                    "Lorem Ipsum is simply dummy text of the printing and type setting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic type setting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum..",
                              ),
                              GFAccordion(
                                collapsedIcon: Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  color: Colors.white,
                                ),
                                expandedIcon: Icon(
                                  Icons.keyboard_arrow_up,
                                  color: Colors.white,
                                ),
                                titleBorderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(6),
                                  topRight: Radius.circular(6),
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(0),
                                ),
                                contentBorderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(7),
                                    bottomRight: Radius.circular(7)),
                                // contentBorderRadius: BorderRadius.circular(3),
                                collapsedTitleBackgroundColor:
                                    Color.fromARGB(255, 121, 178, 225),
                                expandedTitleBackgroundColor:
                                    Color.fromARGB(255, 90, 159, 216),
                                contentBackgroundColor:
                                    Color.fromARGB(255, 172, 206, 233),
                                title:
                                    "Lorem Ipsum is simply dummy text of the printing and type setting industry?",
                                textStyle: TextStyle(color: Colors.white),
                                content:
                                    "Lorem Ipsum is simply dummy text of the printing and type setting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic type setting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum..",
                              ),
                              GFAccordion(
                                collapsedIcon: Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  color: Colors.white,
                                ),
                                expandedIcon: Icon(
                                  Icons.keyboard_arrow_up,
                                  color: Colors.white,
                                ),
                                titleBorderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(6),
                                  topRight: Radius.circular(6),
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(0),
                                ),
                                contentBorderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(7),
                                    bottomRight: Radius.circular(7)),
                                // contentBorderRadius: BorderRadius.circular(3),
                                collapsedTitleBackgroundColor:
                                    Color.fromARGB(255, 121, 178, 225),
                                expandedTitleBackgroundColor:
                                    Color.fromARGB(255, 90, 159, 216),
                                contentBackgroundColor:
                                    Color.fromARGB(255, 172, 206, 233),
                                title:
                                    "Lorem Ipsum is simply dummy text of the printing and type setting industry?",
                                textStyle: TextStyle(color: Colors.white),
                                content:
                                    "Lorem Ipsum is simply dummy text of the printing and type setting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic type setting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum..",
                              ),
                            ]));
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
