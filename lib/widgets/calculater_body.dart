import 'package:calculatore/colors/mycolors.dart';
import 'package:calculatore/provider/calculater_provider.dart';
import 'package:calculatore/widgets/row_five.dart';
import 'package:calculatore/widgets/row_four.dart';
import 'package:calculatore/widgets/row_one.dart';
import 'package:calculatore/widgets/row_three.dart';
import 'package:calculatore/widgets/row_two.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculaterBody extends StatefulWidget {
  const CalculaterBody({Key? key}) : super(key: key);

  @override
  State<CalculaterBody> createState() => _CalculaterBodyState();
}

class _CalculaterBodyState extends State<CalculaterBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          child: Text(
            Provider.of<CalculaterProvier>(context).res,
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          child: Text(Provider.of<CalculaterProvier>(context).details,
              style: TextStyle(color: Colors.grey, fontSize: 16),
              textAlign: TextAlign.start),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
              color: MyColors.lightDark,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))),
          padding: EdgeInsets.all(25),
          width: double.infinity,
          child: Column(
            children: [
              RowOne(),
              SizedBox(
                height: 10,
              ),
              RowTwo(),
              SizedBox(
                height: 10,
              ),
              RowThree(),
              SizedBox(
                height: 10,
              ),
              RowFour(),
              SizedBox(
                height: 10,
              ),
              RowFive()
            ],
          ),
        )
      ],
    ));
  }
}
