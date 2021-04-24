import 'package:flutter/material.dart';
import 'package:sapphire/constants/colors.dart';

import 'manufacture/manufacture.dart';
//import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';


enum FavoriteMethod { manuFacture, mainDistributor, secondDistri, retailer }

class Pharmacy extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<Pharmacy> {
  FavoriteMethod _method = FavoriteMethod.mainDistributor;
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
//           LiquidLinearProgressIndicator(
//   value: 0.25, // Defaults to 0.5.
//   valueColor: AlwaysStoppedAnimation(Colors.pink), // Defaults to the current Theme's accentColor.
//   backgroundColor: Colors.white, // Defaults to the current Theme's backgroundColor.
//   borderColor: Colors.red,
//   borderWidth: 5.0,
//   borderRadius: 12.0,
//   direction: Axis.vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.horizontal.
//   center: Text("Loading..."),
// );
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
                      "Pharmacy",
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
                    //          shape: selected
                    // ? new RoundedRectangleBorder(
                    //     side: new BorderSide(color: Colors.blue, width: 2.0),
                    //     borderRadius: BorderRadius.circular(4.0))
                    // : new RoundedRectangleBorder(
                    //     side: new BorderSide(color: Colors.white, width: 2.0),
                    //     borderRadius: BorderRadius.circular(4.0)),
                    //elevation: 3,
                    child: ListTile(
                      title: const Text('Manufacture'),
                      leading: Radio<FavoriteMethod>(
                        value: FavoriteMethod.manuFacture,
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
                      title: const Text('Main Distributor'),
                      leading: Radio<FavoriteMethod>(
                        value: FavoriteMethod.mainDistributor,
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
                      title: const Text('2nd distributor'),
                      leading: Radio<FavoriteMethod>(
                        value: FavoriteMethod.secondDistri,
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
                      title: const Text('Retailer'),
                      leading: Radio<FavoriteMethod>(
                        value: FavoriteMethod.retailer,
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
            context, MaterialPageRoute(builder: (context) => Manufacture()));
                    }),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
// Padding(
//           padding: const EdgeInsets.only(left: 20),
//           child: Container(
//             width: MediaQuery.of(context).size.width * 0.9,
//             height: MediaQuery.of(context).size.height * 0.07,
//             child: Buttons(
//               press: () {},
//               text: 'Continue',
//             ),
//           ),
//         ),
