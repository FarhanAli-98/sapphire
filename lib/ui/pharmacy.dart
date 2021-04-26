import 'package:flutter/material.dart';
import 'package:sapphire/constants/colors.dart';
import 'package:sapphire/ui/firstPage.dart';
import 'package:sapphire/widget/customWidget.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:sapphire/widget/signup.dart';

class Pharmacy extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<Pharmacy> {
  int percent = 20;

  int customeSelection;

  List<String> pharmacy = [
    "Manufacture",
    "Main Distributor",
    "2nd distributor",
    "Retailer"
  ];
  List<String> manufacture = [
    "Medicine",
    "Equipment",
  ];
  List<String> maindistributor = [
    "Direct Deal with Companies",
  ];
  List<String> seconddistributor = [
    "Collect From Main Distributor",
  ];
  List<String> retailers = [
    "Online Pharmacy",
    "Physical Pharmacy",
  ];

///////////
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
                    percent: 20 / 100,
                    center: Text(
                      "20" + "%",
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
                    list: pharmacy,
                    title: "Pharmacy",
                    selectedRadio: customeSelection,
                    onchange: (val) {
                      print("Pharmacy pressed $val");

                      setState(() {
                        customeSelection = val;
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
                        if (customeSelection == 0) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SecondPage(
                                        list: manufacture,
                                        title: "ManuFacture",
                                        keys: customeSelection,
                                      )));
                        } else if (customeSelection == 1) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SecondPage(
                                        list: maindistributor,
                                        title: "Maindistributor",
                                        keys: 99,
                                      )));
                        } else if (customeSelection == 2) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SecondPage(
                                        list: seconddistributor,
                                        title: "Seconddistributor",
                                        keys: 9,
                                      )));
                        } else if (customeSelection == 3) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SecondPage(
                                        list: retailers,
                                        title: "Retailer",
                                        keys: 44,
                                      )));
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Signup()));
                        }
                      }),
                ]))),
      ),
    );
  }
}
