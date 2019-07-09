import 'package:flutter/material.dart';
import 'package:lp_portfolio/user_interface/dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lalit Pawar',
      debugShowCheckedModeBanner: false,
      home: new Dashboard()
    );
  }
}

