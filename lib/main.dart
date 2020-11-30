import 'package:flutter/material.dart';
import 'package:provider_change_notifier_basic/Eligible_Ui.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Eligible_Ui(),
    );
  }
}