import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sky_scapper_new/view/screen/home_page.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2),
            ()=>Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) => Home_page()
            )
            )
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset("assets/images/weather.png",
        height: 130,
        ),
      ),
    );
  }
}
