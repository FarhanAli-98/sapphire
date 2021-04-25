import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sapphire/constants/colors.dart';
import 'package:sapphire/widget/signup.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  Container(
        width: 450,
        decoration: BoxDecoration(gradient: AppColor.backgroundColors),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
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
                    percent: 99 / 100,
                    center: Text(
                      "99" + "%",
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
          Container(
            height:300,width:200,child: Image(image: AssetImage('assets/images/profile.jpg'))),

     
       
       
           // ignore: deprecated_member_use
                RaisedButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0)),
                    color: AppColor.primary,
                    child: Text('NEXT'),
                    onPressed: () {
            Navigator.push(
            context, MaterialPageRoute(builder: (context) => Signup()));
                      
                    }),
       
        ]),
    ));
  }
}
