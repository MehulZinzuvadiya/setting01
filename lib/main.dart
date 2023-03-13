import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setting01/setting/provider/setting_provider.dart';
import 'package:setting01/setting/view/settingScreen.dart';
import 'package:setting01/stepper/provider/stepper_provider.dart';
import 'package:setting01/stepper/view/stepScreen.dart';
import 'package:setting01/stepper2/view/profileStepper.dart';

import 'i_setting/view.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => SettingProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => StepperProvider(),
      )
    ],
    child:Ios(),
  ));
}
Widget android(){
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(context) => HomeSCreen(),
    },
  );
}
Widget Ios(){
  return CupertinoApp(
    theme: CupertinoThemeData(brightness: Brightness.light),
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(p0) => Isetting(),
    },
  );
}
