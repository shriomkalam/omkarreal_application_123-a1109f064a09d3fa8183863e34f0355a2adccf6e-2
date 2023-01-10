import 'package:flutter/material.dart';

// import 'package:omkar_development/RegistrationPage.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
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

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    var ScreenSize = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: ScreenSize.size.height * 0.10,
              width: ScreenSize.size.width * 0.40,
              child: Image.asset('assets/images/omkar-logo 1.png'),
            ),
            // SizedBox(
            //   height: ScreenSize.size.height * 0.10,
            //   child: Image.asset('assets/images/Ellipse 27.png'),
            // ),
          ],
        ),
        SizedBox(
          height: ScreenSize.size.height * 0.12,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "SERVICES",
                style: TextStyle(
                  fontSize: 27.0,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff0060AF),
                  fontFamily: 'Inter',
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Stack(
            children: <Widget>[
              SizedBox(
                height: ScreenSize.size.height,
                width: ScreenSize.size.width,
                child: Image.asset("assets/images/10893 3 (1).png",
                    fit: BoxFit.cover),
              ),
              new Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: ScreenSize.size.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        elevation: 0,
                        onPressed: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffEEF7FF),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.0),
                              topRight: Radius.circular(15.0),
                              bottomLeft: Radius.circular(15.0),
                              bottomRight: Radius.circular(15.0),
                            ),
                          ),
                          // color: Color(0xffEEF7FF),
                          height: ScreenSize.size.height * 0.23,
                          width: ScreenSize.size.width * 0.38,
                          child: Column(
                            children: [
                              Row(
                                // mainAxisAlignment:
                                //     MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    // color: Colors.amber,
                                    width: ScreenSize.size.width * 0.04,
                                    height: ScreenSize.size.height * 0.09,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                            "assets/images/Ellipse 19.png"),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                          "assets/images/eco-house 1.png"),
                                    ],
                                  ),
                                  Container(
                                    // color: Colors.amber,
                                    width: ScreenSize.size.width * 0.07,
                                    height: ScreenSize.size.height * 0.13,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Image.asset(
                                            "assets/images/Ellipse 19.png"),
                                      ],
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
                                  SizedBox(
                                    height: ScreenSize.size.height * 0.05,
                                    child: Text(
                                      "Electricity",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff0060AF),
                                        fontFamily: 'Inter',
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    // color: Colors.amber,
                                    width: ScreenSize.size.width * 0.22,
                                    // height: ScreenSize.size.height * 0.01,
                                    child: Row(
                                      children: [
                                        Image.asset(
                                            "assets/images/Ellipse 19.png"),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // color: Colors.amber,
                                    width: ScreenSize.size.width * 0.24,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Image.asset(
                                            "assets/images/Ellipse 19.png"),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffEEF7FF),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.0),
                              topRight: Radius.circular(15.0),
                              bottomLeft: Radius.circular(15.0),
                              bottomRight: Radius.circular(15.0),
                            ),
                          ),
                          // color: Color(0xffEEF7FF),
                          height: ScreenSize.size.height * 0.23,
                          width: ScreenSize.size.width * 0.38,
                          child: Column(
                            children: [
                              Row(
                                // mainAxisAlignment:
                                //     MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    // color: Colors.amber,
                                    width: ScreenSize.size.width * 0.04,
                                    height: ScreenSize.size.height * 0.09,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                            "assets/images/Ellipse 19.png"),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                          "assets/images/house-cleaning 1.png"),
                                    ],
                                  ),
                                  Container(
                                    // color: Colors.amber,
                                    width: ScreenSize.size.width * 0.07,
                                    height: ScreenSize.size.height * 0.13,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Image.asset(
                                            "assets/images/Ellipse 19.png"),
                                      ],
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
                                  SizedBox(
                                    height: ScreenSize.size.height * 0.05,
                                    child: Text(
                                      "Cleaning",
                                      style: TextStyle(
                                        fontSize: 19.0,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff0060AF),
                                        fontFamily: 'Inter',
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    // color: Colors.amber,
                                    width: ScreenSize.size.width * 0.22,
                                    // height: ScreenSize.size.height * 0.01,
                                    child: Row(
                                      children: [
                                        Image.asset(
                                            "assets/images/Ellipse 19.png"),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // color: Colors.amber,
                                    width: ScreenSize.size.width * 0.24,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Image.asset(
                                            "assets/images/Ellipse 19.png"),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffEEF7FF),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.0),
                              topRight: Radius.circular(15.0),
                              bottomLeft: Radius.circular(15.0),
                              bottomRight: Radius.circular(15.0),
                            ),
                          ),
                          // color: Color(0xffEEF7FF),
                          height: ScreenSize.size.height * 0.23,
                          width: ScreenSize.size.width * 0.38,
                          child: Column(
                            children: [
                              Row(
                                // mainAxisAlignment:
                                //     MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    // color: Colors.amber,
                                    width: ScreenSize.size.width * 0.04,
                                    height: ScreenSize.size.height * 0.09,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                            "assets/images/Ellipse 19.png"),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                          "assets/images/security 1.png"),
                                    ],
                                  ),
                                  Container(
                                    // color: Colors.amber,
                                    width: ScreenSize.size.width * 0.07,
                                    height: ScreenSize.size.height * 0.13,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Image.asset(
                                            "assets/images/Ellipse 19.png"),
                                      ],
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
                                  SizedBox(
                                    height: ScreenSize.size.height * 0.05,
                                    child: Text(
                                      "Security",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff0060AF),
                                        fontFamily: 'Inter',
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    // color: Colors.amber,
                                    width: ScreenSize.size.width * 0.22,
                                    // height: ScreenSize.size.height * 0.01,
                                    child: Row(
                                      children: [
                                        Image.asset(
                                            "assets/images/Ellipse 19.png"),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // color: Colors.amber,
                                    width: ScreenSize.size.width * 0.24,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Image.asset(
                                            "assets/images/Ellipse 19.png"),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffEEF7FF),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.0),
                              topRight: Radius.circular(15.0),
                              bottomLeft: Radius.circular(15.0),
                              bottomRight: Radius.circular(15.0),
                            ),
                          ),
                          // color: Color(0xffEEF7FF),
                          height: ScreenSize.size.height * 0.23,
                          width: ScreenSize.size.width * 0.38,
                          child: Column(
                            children: [
                              Row(
                                // mainAxisAlignment:
                                //     MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    // color: Colors.amber,
                                    width: ScreenSize.size.width * 0.04,
                                    height: ScreenSize.size.height * 0.09,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                            "assets/images/Ellipse 19.png"),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                          "assets/images/water-supply 1.png"),
                                    ],
                                  ),
                                  Container(
                                    // color: Colors.amber,
                                    width: ScreenSize.size.width * 0.07,
                                    height: ScreenSize.size.height * 0.13,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Image.asset(
                                            "assets/images/Ellipse 19.png"),
                                      ],
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
                                  SizedBox(
                                    height: ScreenSize.size.height * 0.05,
                                    child: Text(
                                      "Water Supply",
                                      style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff0060AF),
                                        fontFamily: 'Inter',
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    // color: Colors.amber,
                                    width: ScreenSize.size.width * 0.22,
                                    // height: ScreenSize.size.height * 0.01,
                                    child: Row(
                                      children: [
                                        Image.asset(
                                            "assets/images/Ellipse 19.png"),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // color: Colors.amber,
                                    width: ScreenSize.size.width * 0.24,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Image.asset(
                                            "assets/images/Ellipse 19.png"),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffEEF7FF),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.0),
                              topRight: Radius.circular(15.0),
                              bottomLeft: Radius.circular(15.0),
                              bottomRight: Radius.circular(15.0),
                            ),
                          ),
                          // color: Color(0xffEEF7FF),
                          height: ScreenSize.size.height * 0.23,
                          width: ScreenSize.size.width * 0.38,
                          child: Column(
                            children: [
                              Row(
                                // mainAxisAlignment:
                                //     MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    // color: Colors.amber,
                                    width: ScreenSize.size.width * 0.04,
                                    height: ScreenSize.size.height * 0.09,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                            "assets/images/Ellipse 19.png"),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                          "assets/images/car-repair 1.png"),
                                    ],
                                  ),
                                  Container(
                                    // color: Colors.amber,
                                    width: ScreenSize.size.width * 0.07,
                                    height: ScreenSize.size.height * 0.13,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Image.asset(
                                            "assets/images/Ellipse 19.png"),
                                      ],
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
                                  SizedBox(
                                    height: ScreenSize.size.height * 0.05,
                                    child: Text(
                                      "Repair",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff0060AF),
                                        fontFamily: 'Inter',
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    // color: Colors.amber,
                                    width: ScreenSize.size.width * 0.22,
                                    // height: ScreenSize.size.height * 0.01,
                                    child: Row(
                                      children: [
                                        Image.asset(
                                            "assets/images/Ellipse 19.png"),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // color: Colors.amber,
                                    width: ScreenSize.size.width * 0.24,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Image.asset(
                                            "assets/images/Ellipse 19.png"),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ]),
    ));
  }
}
