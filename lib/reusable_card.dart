import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild, this.onPress}); //this is a constructor of our ReusableCard with named property called 'this.colour' initialized // also one called cardChild is init but is not compulsorily required

  final Color?
  colour; // the colour property created here is of type color and is spelled that way so as not to cause confusion with the 'color' in the container widget
  final Widget?
  cardChild; // this cardChild property enables content to be designed on any reusableCard
  final Function()?
  onPress;   //this onPress property of type function //also due nnbd latest we have to use Function()? instead of just Function? // according to documentations, we can also use VoidCallback?

  @override
  Widget build(BuildContext context) {
    return GestureDetector(   //introduction of gesture detector from input page
      onTap: onPress,   //this means that when i create a reusable card, i can specify a function(this.onPress) that is going to be the function that is called, when the gesture detector detects a tap on the reusable card
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}


//reusable card is now able to respond to tap