import 'package:flutter/material.dart';
import 'package:sapphire/constants/colors.dart';
import 'package:sapphire/widget/customWidget.dart';

class Pharmacy extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<Pharmacy> {
  bool isManufacture = false;
  bool isMainDistributor = false;
  bool is2nddistributor = false;
  bool isRetailer = false;
  bool ismedicine = false;
  bool isequipment = false;
  int selectedRadioTile;
  int customeSelection;
  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }

  List<String> pharmacy = [
    "Manufacture",
    "Main Distributor",
    "2nd distributor",
    "Retailer"
  ];

  List<String> manufacture = [
    "Medicine",
    "Equipment",
  ];
  List<int> manukey = [1, 2, 3, 4, 5, 6];
  List<String> maindistributor = [
    "Direct Deal with Companies",
    "Manufacturer",
  ];
  List<String> seconddistributor = [
    "Collect From Main Distributor",
  ];
  List<String> retailers = [
    "Online Pharmacy",
    "Physical Pharmacy",
  ];
  List<String> medicine = [
    "Homeopathic",
        "Allopathic",
        "Herbal",
  ];
  List<String> equipments = [
    "Surgical Equipment's",
        "Medical Equipment's",
        "Optical Equipment's",
        "Dental Equipment's",
        "Vital Science Equipment's",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 400,
        decoration: BoxDecoration(gradient: AppColor.backgroundColors),
        child: SingleChildScrollView(
            child: Container(
               // height: 1200,
                width: 400,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Image(image: AssetImage('assets/images/logo.png')),
                    SizedBox(
                      height: 20,
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
                                "Pharmacy",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              )),
                            ),
                          ),
                          Container(
                              height: 300,
                              width: 350,
                              child: ListView.builder(
                                itemCount: pharmacy.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          side: new BorderSide(
                                              color: AppColor.primary,
                                              width: 1.5),
                                          borderRadius:
                                              BorderRadius.circular(4.0)),
                                      child: RadioListTile(
                                        title: Text(pharmacy[index]),
                                        value: index,
                                        groupValue: selectedRadioTile,
                                        onChanged: (val) {
                                          print("Radio Tile pressed $val");
                                          setSelectedRadioTile(val);
                                          setState(() {
                                            if (val == 0) {
                                              isManufacture = true;
                                              isMainDistributor = false;
                                              is2nddistributor = false;
                                              isRetailer = false;
                                            } else if (val == 1) {
                                              isManufacture = false;
                                              isMainDistributor = true;
                                              is2nddistributor = false;
                                              isRetailer = false;
                                            } else if (val == 2) {
                                              isManufacture = false;
                                              isMainDistributor = false;
                                              is2nddistributor = true;
                                              isRetailer = false;
                                            } else if (val == 3) {
                                              isManufacture = false;
                                              isMainDistributor = false;
                                              is2nddistributor = false;
                                              isRetailer = true;
                                            }
                                          });
                                        },
                                      ),
                                    ),
                                  );
                                },
                              )),
                        ],
                      ),
                    ),

                    SizedBox(height: 20),
                    Visibility(
                        visible: isManufacture,
                        child: CustomCard(
                          list: manufacture,
                          title: "Manufacture",
                          selectedRadio:customeSelection,
                          onchange: (val) {
                            print("Manufacture pressed $val");
                            
                            setState(() {
                              customeSelection=val;
                                if (val == 0) {
                              ismedicine = true;
                              isequipment = false;
                            } else if (val == 1) {
                              ismedicine = false;
                              isequipment = true;
                            }
                            });
                          
                          },
                        )),
                    Visibility(
                        visible: isMainDistributor,
                        child: CustomCard(
                          list: maindistributor,
                          title: "Main distributor",
                        )),
                    Visibility(
                        visible: is2nddistributor,
                        child: CustomCard(
                          list: seconddistributor,
                          title: "Second distributor",
                        )),
                    Visibility(
                        visible: isRetailer,
                        child: CustomCard(
                          list: retailers,
                          title: "Retailers",
                        )),
SizedBox(height: 20),
//Medicine Phase
                    Visibility(
                        visible: ismedicine,
                        child: CustomCard(
                          list: medicine,
                          title: "Medicine",
                          // onchange: (){},
                        )),
                    Visibility(
                        visible: isequipment,
                        child: CustomCard(
                          list: equipments,
                          title: "Equipments",
                        )),
              
                  ],
                ))),
      ),
    );
  }
}
