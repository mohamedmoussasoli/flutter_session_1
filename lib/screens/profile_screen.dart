import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {

//  String text;
//
//  ProfileScreen({ this.text });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Screen'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text('ahmed'),
              Text('ahmed'),
              Text('ahmed'),
              Text('ahmed'),
              Text('ahmed'),
              Text('ahmed'),
            ],
          ),
          Icon(Icons.add)
        ],
      ),
    );
  }

}