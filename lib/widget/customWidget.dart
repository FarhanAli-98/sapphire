import 'package:flutter/material.dart';
import 'package:sapphire/constants/colors.dart';

class CustomCard extends StatefulWidget {
  final List<String> list;
  final String title;
  final int selectedRadio;
  final Function onchange;

  const CustomCard({@required this.list,@required this.title, @required this.onchange, this.selectedRadio});

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            height: 50,
            child: Card(
              shape: RoundedRectangleBorder(
                  side: new BorderSide(color: AppColor.primary, width: 2.0),
                  borderRadius: BorderRadius.circular(4.0)),
              child: Center(
                  child: Text(
                widget.title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
            ),
          ),
          Container(
              height: 350,
              width: 350,
              child: ListView.builder(
                itemCount: widget.list.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Card(
                      shape: RoundedRectangleBorder(
                          side: new BorderSide(
                              color: AppColor.primary, width: 1.5),
                          borderRadius: BorderRadius.circular(4.0)),
                      child: RadioListTile(
                        title: Text(widget.list[index]),
                        value: index,
                        groupValue: widget.selectedRadio,
                        onChanged:widget.onchange, 
                      ),
                    ),
                  );
                },
              )),
        ],
      ),
    );
  }
}
