import 'package:flutter/material.dart';

class AppText extends StatelessWidget {

  final String text;

  AppText({ this.text });

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }

}