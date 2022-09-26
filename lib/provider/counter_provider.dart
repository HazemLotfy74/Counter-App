
import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier{
  int counter = 0;

  incrementCounter(){
      counter++;
      notifyListeners();// بديل ال setstate
    }


  decrementCounter(){
      counter--;
      notifyListeners();
    }
}
