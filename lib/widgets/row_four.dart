import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../colors/mycolors.dart';
import '../provider/calculater_provider.dart';

class RowFour extends StatefulWidget {
  const RowFour({Key? key}) : super(key: key);

  @override
  State<RowFour> createState() => _RowFourState();
}

class _RowFourState extends State<RowFour> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              Provider.of<CalculaterProvier>(context, listen: false)
                  .onclick("1");
            },
            child: Text(
              '1',
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
              Provider.of<CalculaterProvier>(context, listen: false)
                  .onclick("2");
            },
            child: Text(
              '2',
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
              Provider.of<CalculaterProvier>(context, listen: false)
                  .onclick("3");
            },
            child: Text(
              '3',
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
              Provider.of<CalculaterProvier>(context,listen: false).oprationSpecification("+");
            },
            child: Text(
              '+',
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
