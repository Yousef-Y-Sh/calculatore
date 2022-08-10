import 'package:calculatore/provider/calculater_provider.dart';
import 'package:calculatore/screens/calculator_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localization/localization.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CalculaterProvier>(
      create: (context) => CalculaterProvier(),
      child: MaterialApp(
        routes: {'/calculater': (context) => CalculaterScreen()},
        initialRoute: '/calculater',
      ),
    );
  }
}
