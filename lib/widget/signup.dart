import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:sapphire/constants/colors.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 450,
          height: 1200,
          decoration: BoxDecoration(gradient: AppColor.backgroundColors),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(
              height: 20,
            ),
            Image(image: AssetImage('assets/images/logo.png')),
            SizedBox(
              height: 20,
            ),
                           LinearPercentIndicator( //leaner progress bar
    animation: true,
    animationDuration: 1000,
    lineHeight: 20.0,
    percent:100/100,
    center: Text(
      "100" + "%",
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
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 50,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          side: new BorderSide(
                              color: AppColor.primary, width: 2.0),
                          borderRadius: BorderRadius.circular(4.0)),
                      child: Center(
                          child: Text(
                        "Enter Name*",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(left: 5.0, right: 5.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: AppColor.primary))),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(left: 5.0, right: 5.0),
                          child: TextFormField(
                            //  controller: commentController,

                            decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: AppColor.primary))),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 5.0, right: 5.0),
                          child: Text(
                            "First",
                            style: TextStyle(fontSize: 18),
                          )),
                      Padding(
                          padding: EdgeInsets.only(left: 5.0, right: 5.0),
                          child: Text(
                            "Last",
                            style: TextStyle(fontSize: 18),
                          )),
                    ],
                  ),
               
                Container(
                    height: 50,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          side: new BorderSide(
                              color: AppColor.primary, width: 2.0),
                          borderRadius: BorderRadius.circular(4.0)),
                      child: Center(
                          child: Text(
                        "Email*",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )),
                    ),
                  ),
               
                 Padding(
                   padding: EdgeInsets.only(left: 5.0, right: 5.0),
                   child: TextFormField(
                     //  controller: commentController,

                     decoration: InputDecoration(
                         focusedBorder: UnderlineInputBorder(
                             borderSide:
                                 BorderSide(color: AppColor.primary))),
                   ),
                 ),
               SizedBox(height:20),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RaisedButton(
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0)),
                          color: AppColor.primary,
                          child: Text('Pervious'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Signup()));
                          }),
                      RaisedButton(
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0)),
                          color: AppColor.primary,
                          child: Text('Submit'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Signup()));
                          }),
                    ],
                  ),
               
               
                ],
              ),
            ),
     
        
          ]),
        ),
      ),
    );
  }
}
