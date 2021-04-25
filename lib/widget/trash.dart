// import 'package:flutter/material.dart';
// import 'package:sapphire/constants/colors.dart';
// import 'package:sapphire/widget/customWidget.dart';
// import 'package:sapphire/widget/profile.dart';
// import 'package:percent_indicator/percent_indicator.dart';
// class Pharmacy extends StatefulWidget {
//   @override
//   _StartScreenState createState() => _StartScreenState();
// }

// class _StartScreenState extends State<Pharmacy> {
//   bool isManufacture = false;
//   bool isMainDistributor = false;
//   bool is2nddistributor = false;
//   bool isRetailer = false;

//   //1
//   bool ismedicine = false;
//   bool isequipment = false;

//   bool ishomeopathic = false;
//   bool isallopathic = false;
//   bool isherbal = false;

//   bool isbudge = false;
  
//   bool isdirectDeal = false;
//   bool ismanufacturer = false;

//   bool isonline = false;
//   bool isOther = false;
//   bool isbutton = false;
//   int percent=50;
//   int selectedRadioTile;
//   int customeSelection;
//   int customeSelection1;
//   int customeSelection2;
//   int customeSelection3;
//   int customeSelection4;
//   int customeSelection5;
//   int customeSelection6;
//   int customeSelection7;
//   int customeSelection8;
//   int customeSelection9;
//   int customeSelection10;
//   int customeSelection11;
//   int customeSelection12;

//   setSelectedRadioTile(int val) {
//     setState(() {
//       selectedRadioTile = val;
//     });
//   }

//   List<String> pharmacy = [
//     "Manufacture",
//     "Main Distributor",
//     "2nd distributor",
//     "Retailer"
//   ];
//   List<String> manufacture = [
//     "Medicine",
//     "Equipment",
//   ];
//   List<String> maindistributor = [
//     "Direct Deal with Companies",
//     "Manufacturer",
//   ];
//   List<String> seconddistributor = [
//     "Collect From Main Distributor",
//   ];

//   List<String> retailers = [
//     "Online Pharmacy",
//     "Physical Pharmacy",
//   ];
//   List<String> onlinepayment = [
//     "Warehouse",
//     "Cooling Store",
//     "Online Payment",
//     "Fast Delivery",
//     "ERP System",
//     "Requirements of Staff",
//     "Maintance Staff",
//     "Data Entry",
//     "Others",
//   ];
//   List<String> otherpayment = [
//     " Staff",
//     "Refrigerator",
//     "Point Of Sale",
//   ];
//   List<String> medicine = [
//     "Homeopathic",
//     "Allopathic",
//     "Herbal",
//   ];
// ///////////
//   List<String> homeopathic = [
//     " Gestro",
//     "Newro",
//     "Supplements",
//     "Liver",
//     "Child Care",
//   ];
//   List<String> alopathic = [
//     "Gestro",
//     "Newro",
//     "Supplements",
//     "liver",
//     "Injections/Syrup/Tablets",
//   ];
//   List<String> herbal = [
//     "Gestro"
//         "Newro"
//         "Supplements"
//         "Liver"
//         "Child Care"
//   ];

//   List<String> budge = [
//     "100000 to 150000",
//     "150000 to 20000",
//     "200000 to 300000",
//   ];
// ////////////
//   List<String> equipments = [
//     "Surgical Equipment's",
//     "Medical Equipment's",
//     "Optical Equipment's",
//     "Dental Equipment's",
//     "Vital Science Equipment's",
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: 450,
       
//         child: SingleChildScrollView(
          
//             child: Container(
//                decoration: BoxDecoration(gradient: AppColor.backgroundColors),
//                 // height: 1200,
//                 width: 440,
//                 child: Column(children: [
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Image(image: AssetImage('assets/images/logo.png')),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   LinearPercentIndicator( //leaner progress bar
//     animation: true,
//     animationDuration: 1000,
//     lineHeight: 20.0,
//     percent:50/100,
//     center: Text(
//       "50" + "%",
//       style: TextStyle(
//           fontSize: 12.0,
//           fontWeight: FontWeight.w600,
//           color: Colors.black),
//     ),
//     linearStrokeCap: LinearStrokeCap.roundAll,
//     progressColor: AppColor.primary,
//     backgroundColor: Colors.grey[300],
//   ),

//                   SizedBox(
//                     height: 20,
//                   ),
//                   Container(
//                     color: Colors.white,
//                     child: Column(
//                       children: <Widget>[
//                         Container(
//                           height: 50,
//                           child: Card(
//                             shape: RoundedRectangleBorder(
//                                 side: new BorderSide(
//                                     color: AppColor.primary, width: 2.0),
//                                 borderRadius: BorderRadius.circular(4.0)),
//                             child: Center(
//                                 child: Text(
//                               "Pharmacy",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.bold, fontSize: 20),
//                             )),
//                           ),
//                         ),
//                         Container(
//                             height: 300,
//                             width: 350,
//                             child: ListView.builder(
//                               itemCount: pharmacy.length,
//                               itemBuilder: (context, index) {
//                                 return Container(
//                                   child: Card(
//                                     shape: RoundedRectangleBorder(
//                                         side: new BorderSide(
//                                             color: AppColor.primary,
//                                             width: 1.5),
//                                         borderRadius:
//                                             BorderRadius.circular(4.0)),
//                                     child: RadioListTile(
//                                       title: Text(pharmacy[index]),
//                                       value: index,
//                                       groupValue: selectedRadioTile,
//                                       onChanged: (val) {
//                                         print("Radio Tile pressed $val");
//                                         setSelectedRadioTile(val);
//                                         setState(() {

//                                           customeSelection=val;
                                         
//                                         });
//                                       },
//                                     ),
//                                   ),
//                                 );
//                               },
//                             )),
//                       ],
//                     ),
//                   ),

//                   SizedBox(height: 20),
//                    // ignore: deprecated_member_use
//                    RaisedButton(
//                               shape: new RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(4.0)),
//                               color: AppColor.primary,
//                               child: Text('NEXT'),
//                               onPressed: () {
//                                      if (customeSelection == 0) {
                                       
                                        
//                                           } else if (customeSelection == 1) {
                                        
//                                           } else if (customeSelection == 2) {
                                          
//                                           } else if (customeSelection == 3) {
                                          
//                                           }







                                
//                               }),
//                   //second Phase
//                   Visibility(
//                       visible: isManufacture,
//                       child: CustomCard(
//                         list: manufacture,
//                         title: "Manufacture",
//                         selectedRadio: customeSelection1,
//                         onchange: (val) {
//                           print("Manufacture pressed $val");

//                           setState(() {
//                             customeSelection1 = val;
//                             if (val == 0) {
//                               ismedicine = true;
//                               isequipment = false;
//                             } else if (val == 1) {
//                               ismedicine = false;
//                               isequipment = true;
//                             }
//                           });
//                         },
//                       )),
//                   Visibility(
//                       visible: isMainDistributor,
//                       child: CustomCard(
//                         list: maindistributor,
//                         title: "Main distributor",
//                         selectedRadio: customeSelection2,
//                         onchange: (val) {
//                           print("Main distributor pressed $val");

//                           setState(() {
//                             customeSelection2 = val;

//                             isbudge = true;
//                           });
//                         },
//                       )),
//                   Visibility(
//                       visible: is2nddistributor,
//                       child: CustomCard(
//                         list: seconddistributor,
//                         title: "Second distributor",
//                         selectedRadio: customeSelection3,
//                         onchange: (val) {
//                           print("Second distributor pressed $val");

//                           setState(() {
//                             customeSelection3 = val;
//                             isbudge = true;
//                           });
//                         },
//                       )),
//                   Visibility(
//                       visible: isRetailer,
//                       child: CustomCard(
//                         list: retailers,
//                         title: "Retailers",
//                         selectedRadio: customeSelection7,
//                         onchange: (val) {
//                           print("Retailers pressed $val");

//                           setState(() {
//                             customeSelection7 = val;
//                             if (val == 0) {
//                               isonline = true;
//                               isOther = false;
//                             } else if (val == 1) {
//                               isonline = false;
//                               isOther = true;
//                             }
//                           });
//                         },
//                       )),
//                   SizedBox(height: 20),
// //Medicine Phase 1
//                   Visibility(
//                       visible: ismedicine,
//                       child: CustomCard(
//                         list: medicine,
//                         title: "Medicine",
//                         selectedRadio: customeSelection10,
//                         onchange: (val) {
//                           print("Medicine pressed $val");

//                           setState(() {
//                             customeSelection10 = val;
//                             if (val == 0) {
//                               ishomeopathic = true;
//                               isallopathic = false;
//                               isherbal = false;
//                             } else if (val == 1) {
//                               ishomeopathic = false;
//                               isallopathic = true;
//                               isherbal = false;
//                             } else if (val == 2) {
//                               ishomeopathic = false;
//                               isallopathic = false;
//                               isherbal = true;
//                             }
//                           });
//                         },
//                       )),
//                   Visibility(
//                       visible: isequipment,
//                       child: CustomCard(
//                         list: equipments,
//                         title: "Equipments",
//                         selectedRadio: customeSelection4,
//                         onchange: (val) {
//                           print("Equipments pressed $val");

//                           setState(() {
//                             customeSelection4 = val;
//                             isbudge = true;
//                           });
//                         },
//                       )),

//                   SizedBox(height: 20),
// //Retailers
// //1
//                   Visibility(
//                       visible: isonline,
//                       child: CustomCard(
//                         list: onlinepayment,
//                         title: "Online payment",
//                         selectedRadio: customeSelection8,
//                         onchange: (val) {
//                           print("Online pressed $val");

//                           setState(() {
//                             customeSelection8 = val;
//                           });
//                         },
//                       )),

//                   //2
//                   Visibility(
//                       visible: isOther,
//                       child: CustomCard(
//                         list: onlinepayment,
//                         title: "otherpayment",
//                         selectedRadio: customeSelection9,
//                         onchange: (val) {
//                           print("otherpayment pressed $val");

//                           setState(() {
//                             customeSelection9 = val;
//                             isbudge = true;
//                           });
//                         },
//                       )),
// //1//Main distributor
//                   Visibility(
//                       visible: ishomeopathic,
//                       child: CustomCard(
//                         list: homeopathic,
//                         title: "Homeopathic",
//                         selectedRadio: customeSelection11,
//                         onchange: (val) {
//                           print("Medicine pressed $val");

//                           setState(() {
//                             customeSelection11 = val;
//                             isbudge = true;
//                           });
//                         },
//                       )),
//                   //2
//                   Visibility(
//                       visible: isallopathic,
//                       child: CustomCard(
//                         list: alopathic,
//                         title: "Allopathic",
//                         selectedRadio: customeSelection1,
//                         onchange: (val) {
//                           print("alopathic pressed $val");

//                           setState(() {
//                             customeSelection1 = val;
//                             isbudge = true;
//                           });
//                         },
//                       )),

//                   Visibility(
//                       visible: isherbal,
//                       child: CustomCard(
//                         list: herbal,
//                         title: "Herbal",
//                         selectedRadio: customeSelection1,
//                         onchange: (val) {
//                           print("Herbal pressed $val");

//                           setState(() {
//                             customeSelection1 = val;
//                             isbudge = true;
//                           });
//                         },
//                       )),

//                   SizedBox(height: 20),

//                   Visibility(
//                       visible: isbudge,
//                       child: CustomCard(
//                         list: budge,
//                         title: "Budge",
//                         selectedRadio: customeSelection12,
//                         onchange: (val) {
//                           print("Herbal pressed $val");

//                           setState(() {
//                             customeSelection12 = val;
//                             isbutton = true;
//                           });
//                         },
//                       )),

//                        // ignore: deprecated_member_use
                      
//                   SizedBox(height: 20),
//                 ]))),
//       ),
//     );
//   }
// }
