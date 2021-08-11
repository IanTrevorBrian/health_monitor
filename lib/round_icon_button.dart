import 'package:flutter/material.dart';

//enables us to customise FAB for our use
//we go on to use it ro replace entire FAB code
class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});

  final IconData?
  icon; //this is so as to implement add and minus icons on out customised round icon button
  final Function()?
  onPressed; //this is so as to add the onPressed function into our roundIconButton property and implement our weight functionality

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      onPressed: onPressed,
    );
  }
}