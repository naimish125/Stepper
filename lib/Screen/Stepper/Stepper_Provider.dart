import 'package:flutter/material.dart';

class Home extends ChangeNotifier
{
  int i = 0;

  void i7 (int value)
  {
    i = value;
    notifyListeners();
  }
  void Backstep()
  {
    i--;
    notifyListeners();
  }
  void Nextstep()
  {
    i++;
    notifyListeners();
  }
}
