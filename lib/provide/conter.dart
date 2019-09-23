import 'package:flutter/material.dart';
import '../model/cart.dart';
class Counter with ChangeNotifier{
  int value = 0;
  increment(){
    value++;
    notifyListeners();
  }
}

class LoginSave with ChangeNotifier{
  LoginInfo value;
  save(val){
    value=val;
    notifyListeners();
  }
}