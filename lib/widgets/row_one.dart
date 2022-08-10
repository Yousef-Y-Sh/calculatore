import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../colors/mycolors.dart';
import '../provider/calculater_provider.dart';

class RowOne extends StatefulWidget {
  @override
  State<RowOne> createState() => _RowOneState();
}

class _RowOneState extends State<RowOne> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              Provider.of<CalculaterProvier>(context, listen: false).clearAll();
            },
            child: Text(
              'AC',
              style: TextStyle(color: Colors.redAccent),
            ),
            style: ElevatedButton.styleFrom(
              primary: MyColors.dark,
              minimumSize: Size(0, 60),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              '(',
              style: TextStyle(color: Colors.greenAccent),
            ),
            style: ElevatedButton.styleFrom(
              primary: MyColors.dark,
              minimumSize: Size(0, 60),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              ')',
              style: TextStyle(color: Colors.greenAccent),
            ),
            style: ElevatedButton.styleFrom(
              primary: MyColors.dark,
              minimumSize: Size(0, 60),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              Provider.of<CalculaterProvier>(context,listen: false).oprationSpecification("÷");
            },
            child: Text(
              '÷',
              style: TextStyle(color: Colors.greenAccent),
            ),
            style: ElevatedButton.styleFrom(
              primary: MyColors.dark,
              minimumSize: Size(0, 60),
            ),
          ),
        ),
      ],
    );
  }
}
