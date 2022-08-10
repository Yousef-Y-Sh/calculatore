import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../colors/mycolors.dart';
import '../provider/calculater_provider.dart';

class RowFive extends StatefulWidget {
  const RowFive({Key? key}) : super(key: key);

  @override
  State<RowFive> createState() => _RowFiveState();
}

class _RowFiveState extends State<RowFive> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              Provider.of<CalculaterProvier>(context,listen: false).comma();
            },
            child: Text(
              '.',
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
              Provider.of<CalculaterProvier>(context,listen: false).onclick("0");
            },
            child: Text(
              '0',
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
          child: ElevatedButton.icon(
            onPressed: () {
              Provider.of<CalculaterProvier>(context,listen: false).onBackSpace();
            },
            style: ElevatedButton.styleFrom(
              primary: MyColors.dark,
              minimumSize: Size(0, 60),
            ),
            icon: Icon(
              Icons.backspace_outlined,
              color: Colors.redAccent,
            ),
            label: Text(''),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              Provider.of<CalculaterProvier>(context,listen: false).opration();
              print('asdf');
            },
            child: Text(
              '=',
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
