import 'package:flutter/material.dart';
import 'package:sapphire/constants/colors.dart';



class  Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppColor.backgroundColors),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            height: 20,
          ),
          Image(image: AssetImage('assets/images/logo.png')),
            SizedBox(
            height: 20,
          ),

            Container(
            color: Colors.white,
            height: 200,
            width: 400,
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        side:
                            new BorderSide(color: AppColor.primary, width: 2.0),
                        borderRadius: BorderRadius.circular(4.0)),
                    child: Center(
                        child: Text(
                      "Name*",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
                  ),
                ),

                Row(children: [
                  TextFormField(
             
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                  
                      ),
                    ),
                    TextFormField(
               
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                    
                      ),
                    ),
                ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Text("First"),
                  Text("Last")
                ],),
  
           
              ],
            ),
          ),
       
          Container(
            color: Colors.white,
            height: 200,
            width: 400,
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        side:
                            new BorderSide(color: AppColor.primary, width: 2.0),
                        borderRadius: BorderRadius.circular(4.0)),
                    child: Center(
                        child: Text(
                      "Email*",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
                  ),
                ),
 TextFormField(
             
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email",
                      ),
                    ),
          
             
                SizedBox(height: 40),

                // ignore: deprecated_member_use
                Row(
                  children: [
                    // ignore: deprecated_member_use
                    RaisedButton(
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0)),
                        color: AppColor.primary,
                        child: Text('Pervious'),


                        ),
                         RaisedButton(
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0)),
                        color: AppColor.primary,
                        child: Text('Submit'),
                        onPressed: () {

     

                        }),
                  ],
                ),
              ],
            ),
          ),
       
       
       
       
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
      ),
    );
  }
}
