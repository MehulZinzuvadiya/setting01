import 'package:flutter/material.dart';

class StepperProvider extends ChangeNotifier {
  int current_step = 0;
  StepperType stepperType = StepperType.vertical;

  var currentDate = DateTime.now();
  var date = DateTime.now();

  String gen = "Male";

  tapped(int step) {
    current_step = step;
    notifyListeners();
  }

  continued() {
    current_step < 10 ? current_step += 1 : null;
    notifyListeners();
  }

  cancel() {
    current_step > 0 ? current_step -= 1 : null;
    notifyListeners();
  }

  SwitchStepsType() {
    stepperType == StepperType.vertical
        ? stepperType = StepperType.horizontal
        : stepperType = StepperType.vertical;
    notifyListeners();
  }

  void ChangeDate(date) {
    date = currentDate;
    notifyListeners();
  }

  void handleGenderChange(String value) {
    {
      gen = value;
      notifyListeners();
    }
  }
}
