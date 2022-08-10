import 'package:flutter/cupertino.dart';

class CalculaterProvier extends ChangeNotifier {
  String res = '0';
  String details = '0';
  double val1 = 0;
  double val2 = 0;
  String operation = '';

  void onclick(String number) {
    if (res == '0') {
      res = number;
      notifyListeners();
    } else {
      res = res + number;
      notifyListeners();
    }
  }

  void onBackSpace() {
    if (res.length != 1) {
      print(res.length.toString());
      res = res.substring(0, res.length - 1);
      notifyListeners();
    } else {
      res = "0";
      notifyListeners();
    }
  }

  void clearAll() {
    res = '0';
    details = '0';
    notifyListeners();
  }

  void oprationSpecification(String op) {
    operation = op;
    val1 = double.parse(res);
    res = '0';
    details = val1.toString() + ' ' + operation;
    notifyListeners();
  }

  void comma() {
    if (res.contains('.')) {
      return;
    }else{
      res = res+'.';
      notifyListeners();
    }
  }

  void opration() {
    if (operation == '+') {
      details = val1.toString() + ' ' + operation + ' ' + res + '=';
      double result = val1 + double.parse(res);
      res = result.toString();
      notifyListeners();
    } else if (operation == '-') {
      details = val1.toString() + ' ' + operation + ' ' + res + '=';
      double result = val1 - double.parse(res);
      res = result.toString();
      notifyListeners();
    } else if (operation == '×') {
      details = val1.toString() + ' ' + operation + ' ' + res + '=';
      double result = val1 * double.parse(res);
      res = result.toString();
      notifyListeners();
    } else if (operation == '÷') {
      details = val1.toString() + ' ' + operation + ' ' + res + '=';
      double result = val1 / double.parse(res);
      res = result.toString();
      notifyListeners();
    }
  }
}
