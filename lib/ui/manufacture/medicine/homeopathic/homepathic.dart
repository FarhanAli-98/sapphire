import 'package:flutter/material.dart';
import 'package:sapphire/constants/colors.dart';
import 'package:sapphire/widget/budge.dart';


enum FavoriteMethod { gestro,newro,supplements,liver,child_Care }
class Homeopathic extends StatefulWidget {
  @override
  _HomeopathicState createState() => _HomeopathicState();
}

class _HomeopathicState extends State<Homeopathic> {
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
            height: 500,
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
                      "Homeopathic",
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
                      title: const Text('Gestro'),
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
                      title: const Text('Newro'),
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
                      title: const Text('Supplements'),
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
                Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        side:
                            new BorderSide(color: AppColor.primary, width: 1.5),
                        borderRadius: BorderRadius.circular(4.0)),
                    elevation: 3,
                    child: ListTile(
                      title: const Text('liver'),
                      leading: Radio<FavoriteMethod>(
                        value: FavoriteMethod.liver,
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
                      title: const Text('child_Care'),
                      leading: Radio<FavoriteMethod>(
                        value: FavoriteMethod.child_Care,
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
            context, MaterialPageRoute(builder: (context) => Budget()));
                      
                    }),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
