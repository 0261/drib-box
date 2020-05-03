import 'package:drib_box/widgets/login/LoginBottomWidget.dart';
import 'package:drib_box/widgets/login/LoginButtionWidget.dart';
import 'package:drib_box/widgets/login/LoginHeaderWidget.dart';
import 'package:drib_box/widgets/login/LoginTextWidget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          LoginHeaderWidget(size: size),
          LoginTextWidget(),
          LoginButtonWidget(size: size),
          LoginBottomWidget()
        ],
      ),
    );
  }
}
