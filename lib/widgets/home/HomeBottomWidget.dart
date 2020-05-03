import 'package:flutter/material.dart';

class HomeBottomWidget extends StatelessWidget {
  const HomeBottomWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 40),
            child: Text(
              '소셜 로그인',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFF1B1D28),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20, bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  colorBrightness: Brightness.dark,
                  onPressed: () {},
                  child: Image.asset('assets/icons/Instagram.png'),
                ),
                FlatButton(
                  colorBrightness: Brightness.dark,
                  onPressed: () {},
                  child: Image.asset('assets/icons/facebook.png'),
                )
              ],
            ),
          ),
          Container(
            child: FlatButton(
              onPressed: () {},
              child: Text('회원가입',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF1B1D28),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
