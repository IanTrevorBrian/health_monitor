import 'dart:math'; //easiest way of squaring a number we have to import this library

//requires no material import
//requires new class with two properties; height as an int and weight

class BmiFunctionality {

  // Non-nullable instance field '_bmi' must be initialized. Try adding an initializer expression, or add a field initializer in this constructor, or mark it 'late'.
    BmiFunctionality({this.height, this.weight}); //constructor

  final int? height;
  final int? weight; //already in kgs

  //create private var (_bmi) that enables us access to bmi thats inside the getResult() mtd and make it visible to it
   //Non-nullable instance field '_bmi' must be initialized
    //This is done by adding an initializer expression, or add a field initializer in this constructor, or mark it 'late'.
   late final double _bmi;

  //create a function that returns BMI as a string
    //However, you'll then have to use the bang operator (!) to cast away nullability.
  String calculateBMI() {
     _bmi = weight! / pow(height! / 100,
        2); //power function takes no. and an exponent //in this case the height is divided by 100 to change to metres
    return _bmi.toStringAsFixed(
        1); //converts bmi to single decimal point value and returns it as a string
  }

  //to provide results based on that bmi we create another mtd that returns string(results)
  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  // get interpretation of result
    String getInterpretation() {
      if (_bmi >= 25) {
        return 'Oops! you have a higher than normal body weight. Try to exercise more.';
      } else if (_bmi >= 18.5) {
        return 'You have a normal body weight. Good job!';
      } else {
        return 'You have a lower than normal body weight. You can eat a bit more.';
      }
    }

}
