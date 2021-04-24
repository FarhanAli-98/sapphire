import 'package:flutter/material.dart';
import 'package:sapphire/constants/colors.dart';
import 'package:sapphire/widget/signup.dart';

enum FavoriteMethod { gestro, newro, supplements, liver, child_Care }

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  FavoriteMethod _method = FavoriteMethod.gestro;
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(gradient: AppColor.backgroundColors),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              SizedBox(
                height: 20,
              ),
              Image(image: AssetImage('assets/images/logo.png')),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 400,
                width: 400,
                child: Column(children: [
                  Image.asset('assets/images/profile.jpg'),
                  // ignore: deprecated_member_use
                  RaisedButton(
                      shape: new RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0)),
                      color: AppColor.primary,
                      child: Text('NEXT'),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Signup()));
                      }),
                ]),
              ),
            ])));
  }
}
