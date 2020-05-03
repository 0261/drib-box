import 'package:drib_box/widgets/home/HomeBottomWidget.dart';
import 'package:drib_box/widgets/home/HomeHeaderWidget.dart';
import 'package:drib_box/widgets/home/HomeTextWidget.dart';
import 'package:drib_box/widgets/home/LoginButtionWidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HomeHeaderWidget(size: size),
          HomeTextWidget(),
          LoginButtonWidget(size: size),
          HomeBottomWidget()
        ],
      ),
    );
  }
}
