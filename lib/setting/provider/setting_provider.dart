import 'package:flutter/cupertino.dart';

class SettingProvider extends ChangeNotifier{
  bool ch1=true,ch2=false,ch3=true;

  void onOff1(bool value){
    ch1=value;
    notifyListeners();
  }
  void onOff2(bool value){
    ch2=value;
    notifyListeners();
  }
  void onOff3(bool value){
    ch3=value;
    notifyListeners();
  }
}