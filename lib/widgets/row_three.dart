import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../colors/mycolors.dart';
import '../provider/calculater_provider.dart';

class RowThree extends StatefulWidget {
  const RowThree({Key? key}) : super(key: key);

  @override
  State<RowThree> createState() => _RowThreeState();
}

class _RowThreeState extends State<RowThree> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              Provider.of<CalculaterProvier>(context,listen: false).onclick("4");
            },
            child: Text(
              '4',
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
              Provider.of<CalculaterProvier>(context,listen: false).onclick("5");
            },
            child: Text(
              '5',
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
              Provider.of<CalculaterProvier>(context,listen: false).onclick("6");
            },
            child: Text(
              '6',
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
              Provider.of<CalculaterProvier>(context,listen: false).oprationSpecification("-");
            },
            child: Text(
              '-',
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
