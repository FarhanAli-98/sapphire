import 'package:flutter/material.dart';

import 'dart:async';

import 'package:sapphire/constants/colors.dart';
import 'package:sapphire/ui/pharmacy.dart';




class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashScreen();
  }
}

class _SplashScreen extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Pharmacy())));
  }

  @override
  Widget build(BuildContext context) {
   // Size size = MediaQuery.of(context).size;
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      gradient:AppColor.splashScreen
    ),
    child: Center(
      child:Image.asset('assets/images/logo.png')
    ),
       
    );
  }
}
