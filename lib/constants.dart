import 'package:flutter/material.dart';

//constants enable us to to apply changes to entire app easily and avoid hardcoding
const kActiveCardColor = Color(0xFF1D1E33);
const kInactiveCardColor = Color(0xFF111328);
const kBottomContainerHeight = 80.0;
const kBottomContainerColor = Color(0xFFEB1555);

//constants for all label text styling in the entire app
const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

//constants for all number text styling in the entire app except for the BMI result
const kNumberTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);

//constant styling for the large calculate and recalculate button
const kLargeButtonTextStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);

//constant styling for the title text at the results page that shows is at the top
const kTitleTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);

//constant styling for the result text
 const kResultTextStyle = TextStyle(
   color: Color(0xFF24D876),
   fontSize: 22.0,
   fontWeight: FontWeight.bold,
 );

 //constant styling for the BMI result
const kBMITextStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
);

//constant styling for our interpretation text
const kInterpretTextStyle = TextStyle(
  fontSize: 22.0,
);