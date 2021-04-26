import 'package:flutter/material.dart';
import 'package:sapphire/constants/colors.dart';
import 'package:sapphire/widget/customWidget.dart';
import 'package:sapphire/widget/profile.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:sapphire/widget/signup.dart';

import 'thirdPage.dart';

class ThirdPhase extends StatefulWidget {
  final List<String> list;
  final String title;
  final int keys;
  final String equipment;

  const ThirdPhase({
    @required this.list,
    @required this.title,
    @required this.keys, this.equipment,
  });
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<ThirdPhase> {
  //Medicine
  List<String> homeopathic = [
    " Gestro",
    "Newro",
    "Supplements",
    "Liver",
    "Child Care",
  ];
  List<String> alopathic = [
    "Gestro",
    "Newro",
    "Supplements",
    "liver",
    "Injections/Syrup/Tablets",
  ];
  List<String> herbal = [
    "Gestro"
        "Newro"
        "Supplements"
        "Liver"
        "Child Care"
  ];

  //Equipment
  
   List<String> surgicalEquipment = [
   "scissor",
"Knife"
  ];
    List<String> medicalEquipment= [
"Gulco Meter"
"Blood Pressure Meter"
"DR Torch"

  ];

  int customeSelection1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 450,
          height: 1200,
        decoration: BoxDecoration(gradient: AppColor.backgroundColors),
        child: SingleChildScrollView(
            child: Container(
       
                // height: 1200,
                width: 440,
                child: Column(children: [
                  SizedBox(
                    height: 20,
                  ),
                  Image(image: AssetImage('assets/images/logo.png')),
                  SizedBox(
                    height: 20,
                  ),
                  LinearPercentIndicator(
                    //leaner progress bar
                    animation: true,
                    animationDuration: 1000,
                    lineHeight: 20.0,
                    percent: 70 / 100,
                    center: Text(
                      "70" + "%",
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: AppColor.primary,
                    backgroundColor: Colors.grey[300],
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  CustomCard(
                    list: widget.list,
                    title: widget.title,
                    selectedRadio: customeSelection1,
                    onchange: (val) {
                      print("${widget.title} pressed $val");

                      setState(() {
                        customeSelection1 = val;
                      });
                    },
                  ),
                  SizedBox(height: 20),
                  // ignore: deprecated_member_use
                  RaisedButton(
                      shape: new RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0)),
                      color: AppColor.primary,
                      child: Text('NEXT'),
                      onPressed: () {
                        if (customeSelection1 == 0 && widget.keys == 0) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForthPage(
                                        list: homeopathic,
                                        title: "homeopathic",
                                        keys: customeSelection1,
                                      )));
                        } else if (customeSelection1 == 1&& widget.keys == 0) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForthPage(
                                        list: alopathic,
                                        title: "alopathic",
                                        keys: customeSelection1,
                                      )));
                        } else if (customeSelection1 == 2&& widget.keys == 0) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForthPage(
                                        list: herbal,
                                        title: "herbal",
                                        keys: customeSelection1,
                                      )));
                        } else if (customeSelection1 == 0 && widget.keys == 1) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForthPage(
                                        list: surgicalEquipment,
                                        title: "Surgical Equipment's",
                                        keys: customeSelection1,
                                      )));
                        } else if (customeSelection1 == 1&& widget.keys == 1) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForthPage(
                                        list: medicalEquipment,
                                        title: "Medical Equipment's",
                                        keys: customeSelection1,
                                      )));
                        } 
                        else{
                              Navigator.push(
            context, MaterialPageRoute(builder: (context) => Signup()));
                        }
                      }),

                  SizedBox(height: 20),
                ]))),
      ),
    );
  }
}
