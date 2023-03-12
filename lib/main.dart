import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setting01/setting/provider/setting_provider.dart';
import 'package:setting01/setting/view/settingScreen.dart';
import 'package:setting01/stepper/provider/stepper_provider.dart';
import 'package:setting01/stepper/view/stepScreen.dart';
import 'package:setting01/stepper2/view/profileStepper.dart';

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
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'stepper2',
      routes: {
        '/': (context) => HomeSCreen(),
        'stepper1': (context) => LoginPage(),
        'stepper2':(context) => ProfileStepper(),
      },
    ),
  ));
}
