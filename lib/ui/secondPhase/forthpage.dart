import 'package:flutter/material.dart';
import 'package:sapphire/constants/colors.dart';
import 'package:sapphire/widget/customWidget.dart';
import 'package:sapphire/widget/profile.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'budge.dart';

class ForthPage extends StatefulWidget {
  final List<String> list;
  final String title;
  final int keys;

  const ForthPage({
    @required this.list,
    @required this.title, @required this.keys,
  });
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<ForthPage> {
  List<String> budge = [
    "100000 to 150000",
    "150000 to 20000",
    "200000 to 300000",
  ];
////////////


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
                    percent: 85 / 100,
                    center: Text(
                      "85" + "%",
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
              
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Fivepage(
                                        list: budge,
                                        title: "budge",
                                        keys:customeSelection1 ,
                                      )));
                             
                            
                      }),

                  SizedBox(height: 20),
                ]))),
      ),
    );
  }
}
