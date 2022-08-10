import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../colors/mycolors.dart';
import '../provider/calculater_provider.dart';

class RowTwo extends StatefulWidget {
  const RowTwo({Key? key}) : super(key: key);

  @override
  State<RowTwo> createState() => _RowTwoState();
}

class _RowTwoState extends State<RowTwo> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              Provider.of<CalculaterProvier>(context,listen: false).onclick("7");
            },
            child: Text(
              '7',
              style: TextStyle(color: Colors.white),
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
              Provider.of<CalculaterProvier>(context,listen: false).onclick("8");
            },
            child: Text(
              '8',
              style: TextStyle(color: Colors.white),
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
              Provider.of<CalculaterProvier>(context,listen: false).onclick("9");
            },
            child: Text(
              '9',
              style: TextStyle(color: Colors.white),
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
              Provider.of<CalculaterProvier>(context,listen: false).oprationSpecification("×");
            },
            child: Text(
              '×',
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
