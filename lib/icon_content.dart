import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.label});

  final IconData? icon; // the IconData here is the datatype
  final String? label; // the String here is the datatype ...and as you can see both datatypes match with Icon and Text

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ), //creates space between widgets i.e between icon and text
        Text(
          label!,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}