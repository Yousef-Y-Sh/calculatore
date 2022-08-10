import 'package:calculatore/colors/mycolors.dart';
import 'package:flutter/material.dart';

AppBar AppBarCalculater() {
  return AppBar(
    elevation: 0,
    title: Text('Light Calculater'),
    centerTitle: false,
    backgroundColor: MyColors.dark,
  );
}
