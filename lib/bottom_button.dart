import 'package:flutter/material.dart';
import 'constants.dart';

//we have to customise the text and onTap because these are the parts that will differ btwn first and second page
class BottomButton extends StatelessWidget {

  BottomButton({@required this.onTap, @required this.buttonTitle}); //constructor called BottomButton with two required inputs

  final Function()? onTap; //property of type function that implements functionality
  final String? buttonTitle; //property of type string that accounts for text on the button

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle!,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(
            bottom:
            20.0), //this enables us to bring the container up a bit so as not to interfere with user(especially iphone users) as it conflicts with the home button of phone //the padding only targets the bottom
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}