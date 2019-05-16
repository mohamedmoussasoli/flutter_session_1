import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  Widget title;

  CustomAppBar({ this.title });

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, 60);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      backgroundColor: Colors.purple,
      title: title,
    );
  }

}