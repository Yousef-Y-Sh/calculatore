import 'package:calculatore/colors/mycolors.dart';
import 'package:calculatore/widgets/calculater_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/app_bar_calculater.dart';

class CalculaterScreen extends StatefulWidget {
  const CalculaterScreen({Key? key}) : super(key: key);

  @override
  State<CalculaterScreen> createState() => _CalculaterScreenState();
}

class _CalculaterScreenState extends State<CalculaterScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.dark,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBarCalculater(),
        body: CalculaterBody(),
      ),
    );
  }
}
