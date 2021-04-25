import 'package:flutter/material.dart';
import 'package:sapphire/constants/colors.dart';
import 'package:sapphire/ui/secondPhase/thirdphase.dart';
import 'package:sapphire/widget/customWidget.dart';
import 'package:sapphire/widget/profile.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:sapphire/widget/signup.dart';

import 'budge.dart';

class SecondPage extends StatefulWidget {
  final List<String> list;
  final String title;
  final int keys;

  const SecondPage({
    @required this.list,
    @required this.title,
    @required this.keys,
  });
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<SecondPage> {
  int customeSelection1;
  List<String> equipments = [
    "Surgical Equipment's",
    "Medical Equipment's",
    "Optical Equipment's",
    "Dental Equipment's",
    "Vital Science Equipment's",
  ];
  List<String> medicine = [
    "Homeopathic",
    "Allopathic",
    "Herbal",
  ];

  List<String> onlinepayment = [
    "Warehouse",
    "Cooling Store",
    "Online Payment",
    "Fast Delivery",
    "ERP System",
    "Requirements of Staff",
    "Maintance Staff",
    "Data Entry",
    "Others",
  ];
  List<String> otherpayment = [
    " Staff",
    "Refrigerator",
    "Point Of Sale",
  ];

  List<String> mainDistributorbudge = [
    " 50000 to 100000",
    "100000 to 150000",
    " 150000 to 300000",
  ];
  List<String> secondDistributorbudge = [
    " 70000 to 130000",
    "130000 to 200000",
  ];

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
                    percent: 50 / 100,
                    center: Text(
                      "50" + "%",
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
                        //medicle phase
                        if (widget.keys == 99) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Fivepage(
                                        list: mainDistributorbudge,
                                        title: "Your Budge",
                                        keys: customeSelection1,
                                      )));
                        } else if (widget.keys == 9) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Fivepage(
                                        list: secondDistributorbudge,
                                        title: "Your Budge",
                                        keys: customeSelection1,
                                      )));
                        } 
                        else if (widget.keys == 44&&customeSelection1 == 0) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Fivepage(
                                        list: onlinepayment,
                                        title: "Online Pharmacy",
                                        keys: customeSelection1,
                                      )));
                        }
                        else if (widget.keys == 44&&customeSelection1 == 1) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Fivepage(
                                        list: otherpayment,
                                        title: "Physical Pharmacy",
                                        keys: customeSelection1,
                                      )));
                        }else if (customeSelection1 == 0 && widget.keys == 0) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ThirdPhase(
                                        list: medicine,
                                        title: "Medicine",
                                        keys: customeSelection1,
                                      )));
                        } else if (customeSelection1 == 1 && widget.keys == 0) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ThirdPhase(
                                        list: equipments,
                                        title: "Equipments",
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
