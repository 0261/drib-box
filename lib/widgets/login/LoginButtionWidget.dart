import 'package:drib_box/components/LoginButton.dart';
import 'package:drib_box/screens/HomeScreen.dart';
import 'package:flutter/material.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          LoginButton(
            size: size,
            buttonBgColor: Color.fromARGB(10, 86, 125, 244),
            maa: MainAxisAlignment.spaceEvenly,
            title: '스마트 로그인',
            assets: 'assets/icons/fingerprint.svg',
            fontColor: Color(0xFF567DF4),
            press: () {},
          ),
          LoginButton(
            size: size,
            buttonBgColor: Color(0xFF567DF4),
            maa: MainAxisAlignment.spaceEvenly,
            title: '로그인',
            assets: 'assets/icons/arrow.svg',
            fontColor: Color(0xFFFFFFFF),
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomeScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
