import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calc/icon_content.dart';
import 'package:bmi_calc/reusable_card.dart';
import 'constants.dart';
import 'results_page.dart';
import 'bottom_button.dart';
import 'round_icon_button.dart';
import 'package:bmi_calc/bmi_functionality.dart';

//this enum is not a constant but rather enables us to create values hence allowing us not to assign integer values to our methods
//enum CANNOT be created inside classes
//Gender is capitalised to show its not a constant or a var
enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  //new var that's going to hold gender created
  //property set to null thus prior to tapping ,no gender is selected meaning that both cards start with inactiveCardColor
  //The primary reason for late keyword creation` was to allow for non-null fields, that did not have to be immediately initialized.
  //late however does not work instead throws 'late initialization error' on launching...i proceeded to use ? like i had in reusable card while dealing with constructors and properties
  Gender? selectedGender;
  int height =
      180; //property of int type with a starting value of 180(cm) //its the default height value displayed //starting height of our app
  int weight =
      60; //property of int type with a starting value of 60(kg) //its the default weight value displayed //starting weight of our app
  int age =
      35; //property of int type with a starting value of 35(years) //its the default age value displayed //starting age of our app

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment:
            CrossAxisAlignment.stretch, //stretches the columns v
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  colour: selectedGender == Gender.male
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ), //acquired after extracting column widget so as to minimise repetition and minimise code
                ), //acquired after extracting container widget so as to minimise repetition and minimise code
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  colour: selectedGender == Gender.female
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment:
                    MainAxisAlignment.center, //refactors our code to the center
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment
                        .center, //refactors our code to the center
                    crossAxisAlignment: CrossAxisAlignment
                        .baseline, //enables our SI unit to be on the same baseline alignment with our number
                    textBaseline: TextBaseline
                        .alphabetic, //enables alignment alphabetically
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(
                          0xFF8D8E98), //color showing inactive side of the slider
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min:
                          120.0, //scale showing minimum height to be inputed at 120cm(1.20m/3.9ft)
                      max:
                          220.0, //scale showing maximum height to be inputed at 220cm(2.20m/7.2ft)
                      onChanged: (double newValue) {
                        //onChanged expects function that takes double value as input and returns void
                        setState(() {
                          height = newValue
                              .round(); //once the slider is changed, we set the height to equal the newValue, the .round() is used to convert integer value to the nearest whole number because newValue is a double and the height is an integer
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                //this will update weight by de creasing it
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(width: 10.0),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                //this will update weight by increasing it
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                //this will update weight by decreasing it
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(width: 10.0),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                //this will update weight by increasing it
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //acquired after extracting GestureDetectorWidget widget so as to minimise repetition and minimise code
          BottomButton(
            buttonTitle: 'CALCULATE',
            onTap: () {
              //where we are going to init new BmiFunctionality  object and name its calculate that expects height got from our slider and weight from our input page as well
              BmiFunctionality calculate =
                  BmiFunctionality(height: height, weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    bmiResult: calculate.calculateBMI(),
                    resultText: calculate.getResult(),
                    interpretation: calculate.getInterpretation(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

//to enable our reusable card to detect gestures,i had to delete the gesture detector widget
//this was in accordance with DART FUNCTIONS AS FIRST ORDER OBJECTS

//prior this is how it looked
// body: Column(
// children: [
// Expanded(
// child: Row(
// children: [
// Expanded(
// child: GestureDetector(
// onTap: (){
// setState(() {
// selectedGender = Gender.male;  //value of selected gender changed to male on tapping male card
// });
// },
// child: ReusableCard(
// colour: selectedGender == Gender.male ? activeCardColor : inactiveCardColor,
// cardChild: IconContent(
// icon: FontAwesomeIcons.mars,
// label: 'MALE',
// ), //acquired after extracting column widget so as to minimise repetition and minimise code
// ),
// ), //acquired after extracting container widget so as to minimise repetition and minimise code
// ),
