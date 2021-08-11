import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmiResult, @required this.resultText, @required this.interpretation});

  final String? bmiResult;
  final String? resultText;
  final String? interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,   //to space out evenly the column
        crossAxisAlignment: CrossAxisAlignment.stretch, //allows our card to take up as much width as it possibly can  //without this, our card shrinks to the size of the text called normal
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),    //to tweak it a bit and get it away from the appbar and closer to our card
              alignment: Alignment.bottomCenter, //to tweak it closer to card in the center
              child: Center(
                child: Text(
                  'Your Result',
                style: kTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,    //its going to take five times the size of what our title text takes
          child: ReusableCard(
              colour: kActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  resultText!.toUpperCase(),   //BMI result text
                style: kResultTextStyle,
              ),
                Text(
                    bmiResult!,   //BMI result
                  style: kBMITextStyle,
                ),
                Text(
                  interpretation!,    //interpretation text for BMI result
                  textAlign: TextAlign.center,
                  style: kInterpretTextStyle,
                )
              ],
            ),
          ),
          ),
          //acquired after extracting GestureDetectorWidget widget so as to minimise repetition and minimise code
          BottomButton(
          buttonTitle: 'RE-CALCULATE',
    onTap: (){
            Navigator.pop(context);
    },
          )
        ],
      ),
    );
  }
}

