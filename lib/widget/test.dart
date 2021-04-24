import 'package:flutter/material.dart';

enum FavoriteMethod { flutter, kotlin, swift, reactNative }


class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}


class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  FavoriteMethod _method = FavoriteMethod.flutter;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('What do you prefer for App Development?')),
      body:
      
       Column(
        children: <Widget>[
          ListTile(
            title: const Text('Flutter'),
            leading: Radio<FavoriteMethod>(
              value: FavoriteMethod.flutter,
              groupValue: _method,
              onChanged: (value) {
                setState(() {
                  _method = value;
                });
              },
            ),
          ),
          Container(
            child: Card(
              elevation: 3,
              child: ListTile(
                title: const Text('Kotlin'),
                leading: Radio<FavoriteMethod>(
                  value: FavoriteMethod.kotlin,
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
          ListTile(
            title: const Text('Swift'),
            leading: Radio<FavoriteMethod>(
              value: FavoriteMethod.swift,
              groupValue: _method,
              onChanged: (value) {
                setState(() {
                  _method = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('React Native'),
            leading: Radio<FavoriteMethod>(
              value: FavoriteMethod.reactNative,
              groupValue: _method,
              onChanged: (value) {
                setState(() {
                  _method = value;
                });
              },
            ),
          ),
          SizedBox(height: 40),
          // ignore: deprecated_member_use
          RaisedButton(child: Text('SUBMIT'), onPressed: () {}),
        ],
      ),
    
    
    );
  }
}