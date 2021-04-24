import 'package:flutter/material.dart';
import 'package:sapphire/constants/colors.dart';
import 'package:sapphire/widget/profile.dart';


enum FavoriteMethod { gestro,newro,supplements,liver,child_Care }
class Budget extends StatefulWidget {
  @override
  _BudgetState createState() => _BudgetState();
}

class _BudgetState extends State<Budget> {
  FavoriteMethod _method = FavoriteMethod.gestro;
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
            height: 400,
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
                      "Budget",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
                  ),
                ),

                Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        side:
                            new BorderSide(color: AppColor.primary, width: 1.5),
                        borderRadius: BorderRadius.circular(4.0)),
            
                    child: ListTile(
                      title: const Text('100000 to 1500000'),
                      leading: Radio<FavoriteMethod>(
                        value: FavoriteMethod.gestro,
                        groupValue: _method,
                        onChanged: (valu) {
                          setState(() {
                            _method = valu;
                            //  selected = true;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        side:
                            new BorderSide(color: AppColor.primary, width: 1.5),
                        borderRadius: BorderRadius.circular(4.0)),
                    elevation: 3,
                    child: ListTile(
                      title: const Text('150000 to 200000'),
                      leading: Radio<FavoriteMethod>(
                        value: FavoriteMethod.newro,
                        groupValue: _method,
                        onChanged: (value) {
                          setState(() {
                            _method = value;
                          });
                        },
                      ),
                    ),
                  ),
                ),
               Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        side:
                            new BorderSide(color: AppColor.primary, width: 1.5),
                        borderRadius: BorderRadius.circular(4.0)),
                    elevation: 3,
                    child: ListTile(
                      title: const Text('200000 to 300000'),
                      leading: Radio<FavoriteMethod>(
                        value: FavoriteMethod.supplements,
                        groupValue: _method,
                        onChanged: (value) {
                          setState(() {
                            _method = value;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              
             
               
                SizedBox(height: 40),

                // ignore: deprecated_member_use
                RaisedButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0)),
                    color: AppColor.primary,
                    child: Text('NEXT'),
                    onPressed: () {

                        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Profile()));

                      
                    }),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
